//
//  File.swift
//  
//
//  Created by 游宗諭 on 2020/4/6.
//

import Foundation
import Vapor
struct UserController:RouteCollection {
	func boot(router: Router) throws {
		let userRoute  = router.grouped("users")
		userRoute.post("create", use: createHandler(_:))
		userRoute.get( use: getAllHandler(_:))
		userRoute.get(User.parameter, use: getUserHandler(_:))
		
	}
	private func createHandler(_ req: Request) throws -> Future<User> {
		try req.content.decode(User.self).save(on: req)
	}
	private func getAllHandler(_ req: Request) throws -> Future<[User]> {
		User.query(on: req).all()
	}
	private func getUserHandler(_ req: Request) throws -> Future<User> {
		try req.parameters.next(User.self)
	}
}
