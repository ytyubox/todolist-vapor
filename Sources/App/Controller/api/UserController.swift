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
		let userRoute  = router.grouped("api/users")
		
	}
}
