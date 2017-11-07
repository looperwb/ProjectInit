//
//  LMenu.swift
//
//  Created by Zwb on 2017/11/6
//  Copyright (c) aonong. All rights reserved.
//

import Foundation
import ObjectMapper

public final class LMenu: Mappable {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let menuNm = "menu_nm"
    static let orderCd = "order_cd"
    static let menuUrl = "menu_url"
    static let menuPic = "menu_pic"
    static let menuId = "menu_id"
    static let upresid = "upresid"
  }

  // MARK: Properties
  public var menuNm: String?
  public var orderCd: String?
  public var menuUrl: String?
  public var menuPic: String?
  public var menuId: String?
  public var upresid: String?

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
    menuNm <- map[SerializationKeys.menuNm]
    orderCd <- map[SerializationKeys.orderCd]
    menuUrl <- map[SerializationKeys.menuUrl]
    menuPic <- map[SerializationKeys.menuPic]
    menuId <- map[SerializationKeys.menuId]
    upresid <- map[SerializationKeys.upresid]
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = menuNm { dictionary[SerializationKeys.menuNm] = value }
    if let value = orderCd { dictionary[SerializationKeys.orderCd] = value }
    if let value = menuUrl { dictionary[SerializationKeys.menuUrl] = value }
    if let value = menuPic { dictionary[SerializationKeys.menuPic] = value }
    if let value = menuId { dictionary[SerializationKeys.menuId] = value }
    if let value = upresid { dictionary[SerializationKeys.upresid] = value }
    return dictionary
  }

}
