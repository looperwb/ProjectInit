//
//  String+Ext.swift
//  aonongoa
//
//  Created by WB Zhou on 2017/11/6.
//  Copyright © 2017年 zwb. All rights reserved.
//

import Foundation

// MARK: - Helpers
extension String {
    var urlEscaped: String {
        return addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
    }
    
    var utf8Encoded: Data {
        return data(using: .utf8)!
    }
}
