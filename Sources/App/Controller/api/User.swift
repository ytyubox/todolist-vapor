//
//  File.swift
//  
//
//  Created by 游宗諭 on 2020/4/6.
//

import FluentPostgreSQL
import Vapor
import Foundation

final class User: Codable {
  var id: UUID?
  var name: String
  var username: String

  init(name: String, username: String) {
    self.name = name
    self.username = username
  }
}

extension User: PostgreSQLUUIDModel{}
extension User: Content,Migration, Parameter{}
