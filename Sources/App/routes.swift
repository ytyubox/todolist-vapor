import Routing
import Vapor

/// Register your application's routes here.
///
/// [Learn More →](https://docs.vapor.codes/3.0/getting-started/structure/#routesswift)
public func routes(_ router: Router) throws {
	let todoController = TodoController()
	try router.register(collection: todoController)
	let webController = WebController()
	try router.register(collection: webController)
	router.get("hello") { req in
		return "Hello, world!"
	}
}
