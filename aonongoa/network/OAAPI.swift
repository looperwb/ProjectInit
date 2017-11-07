//
//  OAAPI.swift
//  aonongoa
//
//  Created by WB Zhou on 2017/11/6.
//  Copyright © 2017年 zwb. All rights reserved.
//

import Foundation
import Moya

enum OAAPI {
    case login(username: String, password: String)
    case wage(page: Int, startDate: String, endDate: String)
}

extension OAAPI: TargetType {
    var baseURL: URL {
        return URL(string: ServiceUrl)!
    }
    
    var path: String {
        switch self {
        case .login:
            return "/login"
        case .wage:
            return "/BusinessManControll/queryXC"
        }
    }
    
    var method: Moya.Method {
        return .post
    }
    
    var sampleData: Data {
        return "Half measures are as bad as nothing at all.".utf8Encoded
    }
    
    var task: Task {
        switch self {
        case let .login(username, password):
            return .requestParameters(parameters: ["usrname" : username, "password" : password], encoding: URLEncoding.default)
        case let .wage(page, startDate, endDate):
            return .requestParameters(parameters: ["currPage" : page, "pageLength" : PageLength, "begin_month" : startDate, "end_month" : endDate, "sUrid" : MainUser!.usrid!], encoding: URLEncoding.default)
        }
    }
    
    var headers: [String : String]? {
        guard let token = MainUser?.token else {
            return nil
        }
        
        return ["token": token]
    }
}
