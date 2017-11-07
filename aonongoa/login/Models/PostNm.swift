//
//  PostNm.swift
//
//  Created by Zwb on 2017/11/6
//  Copyright (c) aonong. All rights reserved.
//

import Foundation
import ObjectMapper

public final class PostNm: Mappable {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let iDKEY = "ID_KEY"
    static let pOSTNAME = "POST_NAME"
  }

  // MARK: Properties
  public var iDKEY: String?
  public var pOSTNAME: String?

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
    iDKEY <- map[SerializationKeys.iDKEY]
    pOSTNAME <- map[SerializationKeys.pOSTNAME]
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = iDKEY { dictionary[SerializationKeys.iDKEY] = value }
    if let value = pOSTNAME { dictionary[SerializationKeys.pOSTNAME] = value }
    return dictionary
  }

}
