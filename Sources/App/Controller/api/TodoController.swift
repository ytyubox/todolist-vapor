//
//  TodoController.swift
//  
//
//  Created by 游宗諭 on 2020/4/4.
//

import Vapor

class TodoController:RouteCollection {
	func boot(router: Router) throws {
		let api = router.grouped("api")
		api.get("todo") { (req) in
			return "123"
		}
	}
	
	
}
