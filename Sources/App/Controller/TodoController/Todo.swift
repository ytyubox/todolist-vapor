//
//  File.swift
//  
//
//  Created by 游宗諭 on 2020/4/4.
//

import Foundation
import Vapor

struct Todo {
	var task:String
	var duedate:String
	var priority:String
	var done:String
	var user_id:String
}

extension Todo:Codable {}
