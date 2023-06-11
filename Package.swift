// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "RealmSwift",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "RealmSwift",
            targets: ["RealmSwiftWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/beMappy/Realm/", exact: "10.39.1-d3"),
    ],
    targets: [
        .target(
            name: "RealmSwiftWrapper",
            dependencies: [
                .target(name: "RealmSwift"),
                .product(name: "Realm", package: "Realm"),
            ]
        ),
        .binaryTarget(
            name: "RealmSwift",
            path: "./RealmSwift.xcframework"
        ),
    ]
)
