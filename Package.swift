// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GirdersSwift",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "GirdersSwift",
            targets: ["GirdersSwift", "GRSecurity"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftyBeaver/SwiftyBeaver.git", exact: "1.7.0"),
        .package(name: "PMKUIKit", path: "Sources/PMKUIKit"),
        .package(url: "https://github.com/kishikawakatsumi/KeychainAccess.git", exact: "3.2.0"),
        .package(url: "https://github.com/AliSoftware/OHHTTPStubs.git", exact: "9.0.0"),
    ],
    targets: [
        .target(
            name: "GirdersSwift",
            dependencies: ["SwiftyBeaver", "PMKUIKit", "KeychainAccess"]),
        .testTarget(
            name: "GirdersSwiftTests",
            dependencies: [
                "GirdersSwift",
                "SwiftyBeaver",
                .product(name: "OHHTTPStubsSwift", package: "OHHTTPStubs")
            ],
            resources: [
                .process("resources")
            ]
        ),
        .binaryTarget(name: "GRSecurity", path: "Sources/GRSecurity.xcframework")
    ]
)
