//
//  Url.swift
//  aonongoa
//
//  Created by WB Zhou on 2017/11/6.
//  Copyright © 2017年 zwb. All rights reserved.
//

import UIKit

public let ServiceUrl = AppUrl.serviceUrl
public var ReportUrl = AppUrl.reportUrl
public let ImageUrl = AppUrl.imageUrl
//public let PhotoUrl = ServiceUrl + "/apppics" + "?token=\(USER.token)" + "&pic="

public struct AppUrl {
    // 应用下载地址
    public static let anoa = "https://www.pgyer.com/ANOA"
    public static let wxUrl = "https://itunes.apple.com/cn/app/wei-xin/id414478124?mt=8"
    
    // 服务器地址
    // 外网正式库
    public static let serviceUrl = "http://app.aonong.com.cn:9980/oa_app"
    public static let serviceIP = "http://59.59.58.37:9980/oa_app/"
    public static let test = "http://192.168.100.235:8080/oa_app"
    // 内网测试库
    public static let test1 = "http://192.168.100.74:8085/oa_app"
    // 外网测试库
    public static let test2 = "http://110.80.1.83:33333/oa_app"
    // 报表服务器地址
    public static let reportUrl = "http://ok.aonong.com.cn:9982/FindReport/ReportServer"
    public static let imageUrl = "http://oa.aonong.com.cn"
}
