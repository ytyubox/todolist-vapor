import Vapor
import Leaf
import FluentPostgreSQL

/// Called before your application initializes.
///
/// [Learn More →](https://docs.vapor.codes/3.0/getting-started/structure/#configureswift)
public func configure(
	_ config: inout Config,
	_ env: inout Environment,
	_ services: inout Services
) throws {
	// Register routes to the router
	let router = EngineRouter.default()
	try routes(router)
	services.register(router, as: Router.self)
	
	// MARK: -  Leaf config
	try services.register(LeafProvider())
	config.prefer(LeafRenderer.self, for: ViewRenderer.self)
	// MARK: - DB config
	try handleDB(&services)
}

fileprivate
func handleDB(
	_ services: inout Services
) throws {
	try services.register(FluentPostgreSQLProvider())
	var middlewares = MiddlewareConfig()
	middlewares.use(ErrorMiddleware.self)
	services.register(middlewares)
	
	DBMaker().make(services: &services)
	
	
}

