//
//  TodoController.swift
//  
//
//  Created by 游宗諭 on 2020/4/4.
//

import Vapor

class TodoController:RouteCollection {
	func boot(router: Router) throws {
		router.get("todo") { (req) in
			return "123"
		}
	}
	
	
}
