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
	internal init(task: String, duedate: String, priority: String, done: Bool, user_id: String, id: Int? = nil, userID: User.ID) {
		self.task = task
		self.duedate = duedate
		self.priority = priority
		self.done = done
		self.user_id = user_id
		self.id = id
		self.userID = userID
	}
	
	
	var task:String
	var duedate:String
	var priority:String
	var done:Bool
	var user_id:String
	var id: Int?
	var userID: User.ID
}

extension Todo:Codable,Content {}
extension Todo: PostgreSQLModel{}
extension Todo:Migration {}
extension Todo: Parameter{}
