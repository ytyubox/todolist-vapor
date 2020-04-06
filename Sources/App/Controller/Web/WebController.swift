//
//  File.swift
//  
//
//  Created by 游宗諭 on 2020/4/4.
//

import Vapor
import Leaf
class WebController:RouteCollection {
	func boot(router: Router) throws {
		router.get(use: indexHandler(_:))
	}
	func indexHandler(_ req: Request) throws -> Future<View> {
		let todo = Todo(task: "buy something", duedate: "Monday", priority: "10", done: false, user_id: "1")
		let context = IndexContext(title: "home Page",todoList: [todo])
		return try req.view().render("index", context)
	}
//	private func todoHandler(_ req: Request) throws -> Future<View> {
//		return try req.parameters.next(Todo.self)
//			.flatMap(to: View.self) { todo in
//				todo
//		}
//	}
}
