//
//  LoginViewController.swift
//  aonongoa
//
//  Created by WB Zhou on 2017/11/6.
//  Copyright © 2017年 zwb. All rights reserved.
//

import UIKit
import Moya

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        OANetwork.shared.login(.login(username: "guojing", password: "guojing722343"), successHandle: {
//            OANetwork.shared.InfosArray(OAAPI.wage(page: 1, startDate: "2016-01", endDate: "2017-01"), successHandle: { (data: [Wage]) in
//                print(data)
//            })
        })
        
        let btn = QMUIFillButton(fillType: .green, frame: CGRect(x: 90, y: 120, width: 100, height: 30))
        view.addSubview(btn)

    }

}
