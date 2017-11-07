//
//  User.swift
//
//  Created by Zwb on 2017/11/6
//  Copyright (c) aonong. All rights reserved.
//

import Foundation
import ObjectMapper

public final class User: Mappable {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let deptNm = "dept_nm"
    static let cDuty = "c_duty"
    static let activeflag = "activeflag"
    static let managredUnit = "managred_unit"
    static let potalMenu = "potal_menu"
    static let proxyUsrdesc = "proxy_usrdesc"
    static let cWxNo = "c_wx_no"
    static let postNm = "post_nm"
    static let resoureTree = "resoureTree"
    static let fundAccount = "fund_account"
    static let orgCode = "org_code"
    static let managerclassid = "managerclassid"
    static let emailId = "email_id"
    static let managredUnitNm = "managred_unit_nm"
    static let stTitle = "st_title"
    static let postNum = "post_num"
    static let logo = "logo"
    static let deptId = "dept_id"
    static let cUnitnameIdHs = "c_unitname_id_hs"
    static let proxyUsrid = "proxy_usrid"
    static let grant = "grant"
    static let sbTitle = "sb_title"
    static let proxyLogid = "proxy_logid"
    static let cWxId = "c_wx_id"
    static let staffSelfRoleId = "staff_self_role_id"
    static let staffNum = "staff_num"
    static let dailiList = "dailiList"
    static let cName = "c_name"
    static let grantCount = "grant_count"
    static let usrid = "usrid"
    static let isSuper = "is_super"
    static let staffNm = "staff_nm"
    static let zyId = "zy_id"
    static let managerflag = "managerflag"
    static let roleCount = "role_count"
    static let usrstation = "usrstation"
    static let emailAddress = "email_address"
    static let tel = "tel"
    static let deptNum = "dept_num"
    static let emailDeptId = "email_dept_id"
    static let hasSalezb = "has_salezb"
    static let cUnitnameHs = "c_unitname_hs"
    static let logid = "logid"
    static let modPass = "mod_pass"
    static let deptid = "deptid"
    static let reportUrl = "report_url"
    static let usrname = "usrname"
    static let password = "password"
    static let staffId = "staff_id"
    static let netArea = "net_area"
    static let isProxy = "is_proxy"
    static let logPwd = "logPwd"
    static let usrdesc = "usrdesc"
    static let lMenu = "lMenu"
    static let cCode = "c_code"
    static let ipAddress = "ip_address"
    static let token = "token"
    static let groupId = "group_id"
    static let proxyPass = "proxy_pass"
    static let emailPwd = "email_pwd"
    static let isSys = "is_sys"
    static let isShowLogo = "is_show_logo"
    static let insideflag = "insideflag"
    static let managerNm = "manager_nm"
    static let orgName = "org_name"
  }

  // MARK: Properties
  public var deptNm: String?
  public var cDuty: Int?
  public var activeflag: Int?
  public var managredUnit: String?
  public var potalMenu: String?
  public var proxyUsrdesc: String?
  public var cWxNo: String?
  public var postNm: [PostNm]?
  public var resoureTree: [Any]?
  public var fundAccount: String?
  public var orgCode: String?
  public var managerclassid: Int?
  public var emailId: String?
  public var managredUnitNm: String?
  public var stTitle: String?
  public var postNum: [PostNum]?
  public var logo: String?
  public var deptId: String?
  public var cUnitnameIdHs: String?
  public var proxyUsrid: String?
  public var grant: Int?
  public var sbTitle: String?
  public var proxyLogid: String?
  public var cWxId: String?
  public var staffSelfRoleId: String?
  public var staffNum: String?
  public var dailiList: [Any]?
  public var cName: String?
  public var grantCount: [Any]?
  public var usrid: String?
  public var isSuper: Int?
  public var staffNm: String?
  public var zyId: String?
  public var managerflag: String?
  public var roleCount: [Any]?
  public var usrstation: String?
  public var emailAddress: String?
  public var tel: String?
  public var deptNum: String?
  public var emailDeptId: String?
  public var hasSalezb: Bool? = false
  public var cUnitnameHs: String?
  public var logid: String?
  public var modPass: Int?
  public var deptid: String?
  public var reportUrl: String?
  public var usrname: String?
  public var password: String?
  public var staffId: String?
  public var netArea: String?
  public var isProxy: Int?
  public var logPwd: String?
  public var usrdesc: String?
  public var lMenu: [LMenu]?
  public var cCode: String?
  public var ipAddress: String?
  public var token: String?
  public var groupId: String?
  public var proxyPass: String?
  public var emailPwd: String?
  public var isSys: Int?
  public var isShowLogo: String?
  public var insideflag: Int?
  public var managerNm: String?
  public var orgName: String?

  // MARK: ObjectMapper Initializers
  /// Map a JSON object to this class using ObjectMapper.
  ///
  /// - parameter map: A mapping from ObjectMapper.
  public required init?(map: Map){

  }

  /// Map a JSON object to this class using ObjectMapper.
  ///
  /// - parameter map: A mapping from ObjectMapper.
  public func mapping(map: Map) {
    deptNm <- map[SerializationKeys.deptNm]
    cDuty <- map[SerializationKeys.cDuty]
    activeflag <- map[SerializationKeys.activeflag]
    managredUnit <- map[SerializationKeys.managredUnit]
    potalMenu <- map[SerializationKeys.potalMenu]
    proxyUsrdesc <- map[SerializationKeys.proxyUsrdesc]
    cWxNo <- map[SerializationKeys.cWxNo]
    postNm <- map[SerializationKeys.postNm]
    resoureTree <- map[SerializationKeys.resoureTree]
    fundAccount <- map[SerializationKeys.fundAccount]
    orgCode <- map[SerializationKeys.orgCode]
    managerclassid <- map[SerializationKeys.managerclassid]
    emailId <- map[SerializationKeys.emailId]
    managredUnitNm <- map[SerializationKeys.managredUnitNm]
    stTitle <- map[SerializationKeys.stTitle]
    postNum <- map[SerializationKeys.postNum]
    logo <- map[SerializationKeys.logo]
    deptId <- map[SerializationKeys.deptId]
    cUnitnameIdHs <- map[SerializationKeys.cUnitnameIdHs]
    proxyUsrid <- map[SerializationKeys.proxyUsrid]
    grant <- map[SerializationKeys.grant]
    sbTitle <- map[SerializationKeys.sbTitle]
    proxyLogid <- map[SerializationKeys.proxyLogid]
    cWxId <- map[SerializationKeys.cWxId]
    staffSelfRoleId <- map[SerializationKeys.staffSelfRoleId]
    staffNum <- map[SerializationKeys.staffNum]
    dailiList <- map[SerializationKeys.dailiList]
    cName <- map[SerializationKeys.cName]
    grantCount <- map[SerializationKeys.grantCount]
    usrid <- map[SerializationKeys.usrid]
    isSuper <- map[SerializationKeys.isSuper]
    staffNm <- map[SerializationKeys.staffNm]
    zyId <- map[SerializationKeys.zyId]
    managerflag <- map[SerializationKeys.managerflag]
    roleCount <- map[SerializationKeys.roleCount]
    usrstation <- map[SerializationKeys.usrstation]
    emailAddress <- map[SerializationKeys.emailAddress]
    tel <- map[SerializationKeys.tel]
    deptNum <- map[SerializationKeys.deptNum]
    emailDeptId <- map[SerializationKeys.emailDeptId]
    hasSalezb <- map[SerializationKeys.hasSalezb]
    cUnitnameHs <- map[SerializationKeys.cUnitnameHs]
    logid <- map[SerializationKeys.logid]
    modPass <- map[SerializationKeys.modPass]
    deptid <- map[SerializationKeys.deptid]
    reportUrl <- map[SerializationKeys.reportUrl]
    usrname <- map[SerializationKeys.usrname]
    password <- map[SerializationKeys.password]
    staffId <- map[SerializationKeys.staffId]
    netArea <- map[SerializationKeys.netArea]
    isProxy <- map[SerializationKeys.isProxy]
    logPwd <- map[SerializationKeys.logPwd]
    usrdesc <- map[SerializationKeys.usrdesc]
    lMenu <- map[SerializationKeys.lMenu]
    cCode <- map[SerializationKeys.cCode]
    ipAddress <- map[SerializationKeys.ipAddress]
    token <- map[SerializationKeys.token]
    groupId <- map[SerializationKeys.groupId]
    proxyPass <- map[SerializationKeys.proxyPass]
    emailPwd <- map[SerializationKeys.emailPwd]
    isSys <- map[SerializationKeys.isSys]
    isShowLogo <- map[SerializationKeys.isShowLogo]
    insideflag <- map[SerializationKeys.insideflag]
    managerNm <- map[SerializationKeys.managerNm]
    orgName <- map[SerializationKeys.orgName]
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = deptNm { dictionary[SerializationKeys.deptNm] = value }
    if let value = cDuty { dictionary[SerializationKeys.cDuty] = value }
    if let value = activeflag { dictionary[SerializationKeys.activeflag] = value }
    if let value = managredUnit { dictionary[SerializationKeys.managredUnit] = value }
    if let value = potalMenu { dictionary[SerializationKeys.potalMenu] = value }
    if let value = proxyUsrdesc { dictionary[SerializationKeys.proxyUsrdesc] = value }
    if let value = cWxNo { dictionary[SerializationKeys.cWxNo] = value }
    if let value = postNm { dictionary[SerializationKeys.postNm] = value.map { $0.dictionaryRepresentation() } }
    if let value = resoureTree { dictionary[SerializationKeys.resoureTree] = value }
    if let value = fundAccount { dictionary[SerializationKeys.fundAccount] = value }
    if let value = orgCode { dictionary[SerializationKeys.orgCode] = value }
    if let value = managerclassid { dictionary[SerializationKeys.managerclassid] = value }
    if let value = emailId { dictionary[SerializationKeys.emailId] = value }
    if let value = managredUnitNm { dictionary[SerializationKeys.managredUnitNm] = value }
    if let value = stTitle { dictionary[SerializationKeys.stTitle] = value }
    if let value = postNum { dictionary[SerializationKeys.postNum] = value.map { $0.dictionaryRepresentation() } }
    if let value = logo { dictionary[SerializationKeys.logo] = value }
    if let value = deptId { dictionary[SerializationKeys.deptId] = value }
    if let value = cUnitnameIdHs { dictionary[SerializationKeys.cUnitnameIdHs] = value }
    if let value = proxyUsrid { dictionary[SerializationKeys.proxyUsrid] = value }
    if let value = grant { dictionary[SerializationKeys.grant] = value }
    if let value = sbTitle { dictionary[SerializationKeys.sbTitle] = value }
    if let value = proxyLogid { dictionary[SerializationKeys.proxyLogid] = value }
    if let value = cWxId { dictionary[SerializationKeys.cWxId] = value }
    if let value = staffSelfRoleId { dictionary[SerializationKeys.staffSelfRoleId] = value }
    if let value = staffNum { dictionary[SerializationKeys.staffNum] = value }
    if let value = dailiList { dictionary[SerializationKeys.dailiList] = value }
    if let value = cName { dictionary[SerializationKeys.cName] = value }
    if let value = grantCount { dictionary[SerializationKeys.grantCount] = value }
    if let value = usrid { dictionary[SerializationKeys.usrid] = value }
    if let value = isSuper { dictionary[SerializationKeys.isSuper] = value }
    if let value = staffNm { dictionary[SerializationKeys.staffNm] = value }
    if let value = zyId { dictionary[SerializationKeys.zyId] = value }
    if let value = managerflag { dictionary[SerializationKeys.managerflag] = value }
    if let value = roleCount { dictionary[SerializationKeys.roleCount] = value }
    if let value = usrstation { dictionary[SerializationKeys.usrstation] = value }
    if let value = emailAddress { dictionary[SerializationKeys.emailAddress] = value }
    if let value = tel { dictionary[SerializationKeys.tel] = value }
    if let value = deptNum { dictionary[SerializationKeys.deptNum] = value }
    if let value = emailDeptId { dictionary[SerializationKeys.emailDeptId] = value }
    dictionary[SerializationKeys.hasSalezb] = hasSalezb
    if let value = cUnitnameHs { dictionary[SerializationKeys.cUnitnameHs] = value }
    if let value = logid { dictionary[SerializationKeys.logid] = value }
    if let value = modPass { dictionary[SerializationKeys.modPass] = value }
    if let value = deptid { dictionary[SerializationKeys.deptid] = value }
    if let value = reportUrl { dictionary[SerializationKeys.reportUrl] = value }
    if let value = usrname { dictionary[SerializationKeys.usrname] = value }
    if let value = password { dictionary[SerializationKeys.password] = value }
    if let value = staffId { dictionary[SerializationKeys.staffId] = value }
    if let value = netArea { dictionary[SerializationKeys.netArea] = value }
    if let value = isProxy { dictionary[SerializationKeys.isProxy] = value }
    if let value = logPwd { dictionary[SerializationKeys.logPwd] = value }
    if let value = usrdesc { dictionary[SerializationKeys.usrdesc] = value }
    if let value = lMenu { dictionary[SerializationKeys.lMenu] = value.map { $0.dictionaryRepresentation() } }
    if let value = cCode { dictionary[SerializationKeys.cCode] = value }
    if let value = ipAddress { dictionary[SerializationKeys.ipAddress] = value }
    if let value = token { dictionary[SerializationKeys.token] = value }
    if let value = groupId { dictionary[SerializationKeys.groupId] = value }
    if let value = proxyPass { dictionary[SerializationKeys.proxyPass] = value }
    if let value = emailPwd { dictionary[SerializationKeys.emailPwd] = value }
    if let value = isSys { dictionary[SerializationKeys.isSys] = value }
    if let value = isShowLogo { dictionary[SerializationKeys.isShowLogo] = value }
    if let value = insideflag { dictionary[SerializationKeys.insideflag] = value }
    if let value = managerNm { dictionary[SerializationKeys.managerNm] = value }
    if let value = orgName { dictionary[SerializationKeys.orgName] = value }
    return dictionary
  }

}
