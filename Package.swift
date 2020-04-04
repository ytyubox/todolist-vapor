// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "todoList",
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", .upToNextMinor(from: "3.3.0")),
				.package(url: "https://github.com/vapor/postgresql.git", from: "1.0.0"),
    ],
    targets: [
        .target(name: "App", dependencies: ["Vapor","PostgreSQL"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"]),
    ]
)

