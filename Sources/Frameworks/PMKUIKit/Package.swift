// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PMKUIKit",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "PMKUIKit",
            targets: ["PMKUIKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/mxcl/PromiseKit.git", .exact("6.8.3"))
    ],
    targets: [
        .target(
            name: "PMKUIKit",
            dependencies: ["PromiseKit"],
            exclude: [
                "PMKUIKit.h",
                "UIView+AnyPromise.h",
                "UIView+AnyPromise.m",
                "UIViewController+AnyPromise.h",
                "UIViewController+AnyPromise.m"
            ]),
        .testTarget(
            name: "PMKUIKitTests",
            dependencies: ["PMKUIKit"])
    ]
)

