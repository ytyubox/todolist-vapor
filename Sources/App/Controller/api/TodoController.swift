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
		api.get("todo",use: getAllTodo(_:))
	}
	
	func getAllTodo(_ req: Request) throws -> Future<[Todo]> {
		Todo.query(on: req).all()
	}
}
