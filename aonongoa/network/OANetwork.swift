//
//  OANetwork.swift
//  aonongoa
//
//  Created by WB Zhou on 2017/11/6.
//  Copyright © 2017年 zwb. All rights reserved.
//

import UIKit
import Moya
import Moya_ObjectMapper
import RxSwift
import ObjectMapper

final class OANetwork {
    
    static let shared = OANetwork()
    
    // 菊花插件
    static let networkPlugin = NetworkActivityPlugin { (change, _) -> Void in
        switch change {
        case .began:
            DispatchQueue.main.async(execute: {
                UIApplication.shared.isNetworkActivityIndicatorVisible = true
            })
        case .ended:
            UIApplication.shared.isNetworkActivityIndicatorVisible = false
        }
    }
    
//    static let endpointClosure = { (target: OAAPI) -> Endpoint<OAAPI> in
//
//        let endpoint: Endpoint<OAAPI> = Endpoint<OAAPI>(
//            url: target.baseURL.appendingPathComponent(target.path).absoluteString,
//            sampleResponseClosure: {.networkResponse(200, target.sampleData)},
//            method: target.method,
//            task: target.task,
//            httpHeaderFields: nil
//        )
//
//        return endpoint.adding(newHTTPHeaderFields: ["token": ""])
//    }

    let provider = MoyaProvider<OAAPI>(plugins: [networkPlugin])

}

extension OANetwork {
    
    func login(_ target: OAAPI, successHandle: (() -> Void)?) {

        _ = provider.rx.request(target).mapObject(User.self).subscribe { (event) in
            switch event {
            case let .success(user):
                MainUser = user
                print(user.staffNm ?? "")
                print(user)
                successHandle!()
            case let .error(error):
                print(error)
            }
        }
    }
    
    func InfoObject<T: BaseMappable>(_ target: OAAPI, successHandle: @escaping ((T) -> Void)) {
    
        _ = provider.rx.request(target).mapInfoObject(T.self).subscribe { (event) in
            switch event {
            case let .success(result):
                successHandle(result)
            case let .error(error):
                print(error)
            }
        }
    }
    
    func InfosArray<T: BaseMappable>(_ target: OAAPI, successHandle: @escaping (([T]) -> Void)) {
        
        _ = provider.rx.request(target).mapInfosArray(T.self).subscribe { (event) in
            switch event {
            case let .success(result):
                successHandle(result)
            case let .error(error):
                print(error)
            }
        }
    }
}

enum ORMError: Error {
    case ormNoRepresentor
    case ormNotSuccessfulHTTP
    case ormNoData
    case ormCouldNotMakeObjectError
    case ormBizError(resultCode: Int?, resultMsg: String?)
}

enum BizStatus: String {
    case bizSuccess = "200"
    case bizError
}

extension PrimitiveSequence where TraitType == SingleTrait, ElementType == Response {

    public func mapInfoObject<T: BaseMappable>(_ type: T.Type) -> Single<T> {
        return flatMap { response -> Single<T> in
            
            guard let dict = try response.mapJSON() as? [String: Any] else {
                throw ORMError.ormNoData
            }
            
            guard let flag = dict["flag"] as? String, flag == "true" else {
                let msg = dict["info"] as? String
                throw ORMError.ormBizError(resultCode: response.statusCode, resultMsg: msg)
            }
            
            guard let info = dict["info"] as? [String: Any] else {
                throw ORMError.ormNoRepresentor
            }
            
            guard let result = T(JSON: info) else {
                throw ORMError.ormCouldNotMakeObjectError
            }
            
            return Single.just(result)
        }
    }
    
    public func mapInfosArray<T: BaseMappable>(_ type: T.Type) -> Single<[T]> {
        return flatMap { response -> Single<[T]> in
            
            guard let dict = try response.mapJSON() as? [String: Any] else {
                throw ORMError.ormNoData
            }
            
            guard let flag = dict["flag"] as? String, flag == "true" else {
                let msg = dict["info"] as? String
                throw ORMError.ormBizError(resultCode: response.statusCode, resultMsg: msg)
            }
            
            guard let infos = dict["infos"] as? [[String: Any]] else {
                throw ORMError.ormNoRepresentor
            }
            
            let result = infos.flatMap({ T(JSON: $0) })
            return Single.just(result)
        }
    }
}
