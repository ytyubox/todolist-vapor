//
//  File.swift
//  
//
//  Created by 游宗諭 on 2020/4/4.
//

import Foundation
import FluentPostgreSQL
import Vapor

typealias DB = Migration & PostgreSQLModel & Content

struct Todo {
	var task:String
	var duedate:String
	var priority:String
	var done:Bool
	var user_id:String
	var id: Int?
}

extension Todo:Codable,Content {}
extension Todo: PostgreSQLModel{}
extension Todo:Migration {}
