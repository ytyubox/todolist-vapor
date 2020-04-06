//
//  File.swift
//  
//
//  Created by 游宗諭 on 2020/4/6.
//

import Foundation
import Vapor
struct APIController: RouteCollection {
	func boot(router: Router) throws {
		let apiGroup = router.grouped("api")
		try apiGroup.register(collection: UserController())
		try apiGroup.register(collection: TodoController())
		
	}
}
