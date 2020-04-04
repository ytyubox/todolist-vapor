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
		let todo = api.grouped("todo")
		todo.get(use: getAllTodo(_:))
		todo.post("create", use: createTodo(_:))
	}
	
	func getAllTodo(_ req: Request) throws -> Future<[Todo]> {
		Todo.query(on: req).all()
	}
	func createTodo(_ req: Request) throws -> Future<Todo> {
		try	req.content.decode(Todo.self)
			.flatMap(to: Todo.self) { todo in
				todo.save(on: req)
		}
	}
}
