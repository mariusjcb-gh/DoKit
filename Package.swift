// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DoraemonKit",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "CFoundation", targets: ["CFoundation"])
    ],
    dependencies: [
        .package(url: "https://github.com/Mantle/Mantle.git", .upToNextMajor(from: "2.2.0")),
        .package(url: "https://github.com/robnadin/SocketRocket.git", branch: "spm-support")
    ],
    targets: [
        .target(
            name: "CFoundation",
            dependencies: [],
            path: "iOS/DoKit/Classes/CFoundation/",
            swiftSettings: [
                .define("DEBUG", .when(configuration: .debug)),
                .unsafeFlags(["-Wall", "-Wextra", "-Wpedantic", "-Werror", "-fvisibility=hidden"], .when(configuration: .debug))
            ]
        )
    ]
)
