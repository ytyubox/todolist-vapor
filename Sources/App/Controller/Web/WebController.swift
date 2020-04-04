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
		try req.view().render("index")
	}
}
