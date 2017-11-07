//
//  Wage.swift
//
//  Created by zwb on 2017/11/7
//  Copyright (c) aonong. All rights reserved.
//

import Foundation
import ObjectMapper

public struct Wage: Mappable {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let holidaysTimes = "holidays_times"
    static let deptNm = "dept_nm"
    static let cfBt = "cf_bt"
    static let holidayFee = "holiday_fee"
    static let gwJt = "gw_jt"
    static let sWorkId = "s_work_id"
    static let ordinaryTimes = "ordinary_times"
    static let glgzMoney = "glgz_money"
    static let orgCode = "org_code"
    static let overtimePay = "overtime_pay"
    static let kqKb = "kq_kb"
    static let idKey = "id_key"
    static let staffId = "staff_id"
    static let yjMoney = "yj_money"
    static let sbMoney = "sb_money"
    static let jxMoney = "jx_money"
    static let sfMoney = "sf_money"
    static let qtMoney = "qt_money"
    static let sTax = "s_tax"
    static let rowNum = "row_num"
    static let sNo = "s_no"
    static let sRemark = "s_remark"
    static let jygzMoney = "jygz_money"
    static let gwNm = "gw_nm"
    static let hotMoney = "hot_money"
    static let sWorkNm = "s_work_nm"
    static let orgName = "org_name"
    static let basicPay = "basic_pay"
    static let weekendTimes = "weekend_times"
    static let staffNm = "staff_nm"
    static let mqMoney = "mq_money"
    static let cJoinincdate = "c_joinincdate"
    static let gjjMoney = "gjj_money"
    static let yfMoney = "yf_money"
    static let yearMonth = "year_month"
  }

  // MARK: Properties
  public var holidaysTimes: String?
  public var deptNm: String?
  public var cfBt: Int?
  public var holidayFee: Int?
  public var gwJt: Int?
  public var sWorkId: String?
  public var ordinaryTimes: String?
  public var glgzMoney: String?
  public var orgCode: String?
  public var overtimePay: Int?
  public var kqKb: Int?
  public var idKey: Int?
  public var staffId: String?
  public var yjMoney: Int?
  public var sbMoney: Float?
  public var jxMoney: Float?
  public var sfMoney: Float?
  public var qtMoney: Int?
  public var sTax: Float?
  public var rowNum: Int?
  public var sNo: Int?
  public var sRemark: String?
  public var jygzMoney: String?
  public var gwNm: String?
  public var hotMoney: Int?
  public var sWorkNm: String?
  public var orgName: String?
  public var basicPay: Int?
  public var weekendTimes: String?
  public var staffNm: String?
  public var mqMoney: Int?
  public var cJoinincdate: String?
  public var gjjMoney: Int?
  public var yfMoney: Float?
  public var yearMonth: String?

  // MARK: ObjectMapper Initializers
  /// Map a JSON object to this class using ObjectMapper.
  ///
  /// - parameter map: A mapping from ObjectMapper.
  public init?(map: Map){

  }

  /// Map a JSON object to this class using ObjectMapper.
  ///
  /// - parameter map: A mapping from ObjectMapper.
  public mutating func mapping(map: Map) {
    holidaysTimes <- map[SerializationKeys.holidaysTimes]
    deptNm <- map[SerializationKeys.deptNm]
    cfBt <- map[SerializationKeys.cfBt]
    holidayFee <- map[SerializationKeys.holidayFee]
    gwJt <- map[SerializationKeys.gwJt]
    sWorkId <- map[SerializationKeys.sWorkId]
    ordinaryTimes <- map[SerializationKeys.ordinaryTimes]
    glgzMoney <- map[SerializationKeys.glgzMoney]
    orgCode <- map[SerializationKeys.orgCode]
    overtimePay <- map[SerializationKeys.overtimePay]
    kqKb <- map[SerializationKeys.kqKb]
    idKey <- map[SerializationKeys.idKey]
    staffId <- map[SerializationKeys.staffId]
    yjMoney <- map[SerializationKeys.yjMoney]
    sbMoney <- map[SerializationKeys.sbMoney]
    jxMoney <- map[SerializationKeys.jxMoney]
    sfMoney <- map[SerializationKeys.sfMoney]
    qtMoney <- map[SerializationKeys.qtMoney]
    sTax <- map[SerializationKeys.sTax]
    rowNum <- map[SerializationKeys.rowNum]
    sNo <- map[SerializationKeys.sNo]
    sRemark <- map[SerializationKeys.sRemark]
    jygzMoney <- map[SerializationKeys.jygzMoney]
    gwNm <- map[SerializationKeys.gwNm]
    hotMoney <- map[SerializationKeys.hotMoney]
    sWorkNm <- map[SerializationKeys.sWorkNm]
    orgName <- map[SerializationKeys.orgName]
    basicPay <- map[SerializationKeys.basicPay]
    weekendTimes <- map[SerializationKeys.weekendTimes]
    staffNm <- map[SerializationKeys.staffNm]
    mqMoney <- map[SerializationKeys.mqMoney]
    cJoinincdate <- map[SerializationKeys.cJoinincdate]
    gjjMoney <- map[SerializationKeys.gjjMoney]
    yfMoney <- map[SerializationKeys.yfMoney]
    yearMonth <- map[SerializationKeys.yearMonth]
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = holidaysTimes { dictionary[SerializationKeys.holidaysTimes] = value }
    if let value = deptNm { dictionary[SerializationKeys.deptNm] = value }
    if let value = cfBt { dictionary[SerializationKeys.cfBt] = value }
    if let value = holidayFee { dictionary[SerializationKeys.holidayFee] = value }
    if let value = gwJt { dictionary[SerializationKeys.gwJt] = value }
    if let value = sWorkId { dictionary[SerializationKeys.sWorkId] = value }
    if let value = ordinaryTimes { dictionary[SerializationKeys.ordinaryTimes] = value }
    if let value = glgzMoney { dictionary[SerializationKeys.glgzMoney] = value }
    if let value = orgCode { dictionary[SerializationKeys.orgCode] = value }
    if let value = overtimePay { dictionary[SerializationKeys.overtimePay] = value }
    if let value = kqKb { dictionary[SerializationKeys.kqKb] = value }
    if let value = idKey { dictionary[SerializationKeys.idKey] = value }
    if let value = staffId { dictionary[SerializationKeys.staffId] = value }
    if let value = yjMoney { dictionary[SerializationKeys.yjMoney] = value }
    if let value = sbMoney { dictionary[SerializationKeys.sbMoney] = value }
    if let value = jxMoney { dictionary[SerializationKeys.jxMoney] = value }
    if let value = sfMoney { dictionary[SerializationKeys.sfMoney] = value }
    if let value = qtMoney { dictionary[SerializationKeys.qtMoney] = value }
    if let value = sTax { dictionary[SerializationKeys.sTax] = value }
    if let value = rowNum { dictionary[SerializationKeys.rowNum] = value }
    if let value = sNo { dictionary[SerializationKeys.sNo] = value }
    if let value = sRemark { dictionary[SerializationKeys.sRemark] = value }
    if let value = jygzMoney { dictionary[SerializationKeys.jygzMoney] = value }
    if let value = gwNm { dictionary[SerializationKeys.gwNm] = value }
    if let value = hotMoney { dictionary[SerializationKeys.hotMoney] = value }
    if let value = sWorkNm { dictionary[SerializationKeys.sWorkNm] = value }
    if let value = orgName { dictionary[SerializationKeys.orgName] = value }
    if let value = basicPay { dictionary[SerializationKeys.basicPay] = value }
    if let value = weekendTimes { dictionary[SerializationKeys.weekendTimes] = value }
    if let value = staffNm { dictionary[SerializationKeys.staffNm] = value }
    if let value = mqMoney { dictionary[SerializationKeys.mqMoney] = value }
    if let value = cJoinincdate { dictionary[SerializationKeys.cJoinincdate] = value }
    if let value = gjjMoney { dictionary[SerializationKeys.gjjMoney] = value }
    if let value = yfMoney { dictionary[SerializationKeys.yfMoney] = value }
    if let value = yearMonth { dictionary[SerializationKeys.yearMonth] = value }
    return dictionary
  }

}
