//
//  File.swift
//  
//
//  Created by 游宗諭 on 2020/4/4.
//

import Foundation
import FluentPostgreSQL

struct DBMaker {
	
	func make(services: inout Services) {
		var databases = DatabasesConfig()
		let databaseConfig = PostgreSQLDatabaseConfig(
			hostname: "localhost",
			username: "todoList",
			database: "todoList",
			password: "password")
		let database = PostgreSQLDatabase(config: databaseConfig)
		databases.add(database: database, as: .psql)
		services.register(databases)
		
		var migrations = MigrationConfig()
		// 4
		migrations.add(model: Todo.self, database: DatabaseIdentifier<Todo.Database>.psql)
		migrations.add(model: User.self, database: DatabaseIdentifier<User.Database>.psql)
		services.register(migrations)
	}
}

