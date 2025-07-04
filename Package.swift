// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "Ospuze",
    platforms: [.iOS(.v15), .macOS(.v12), .visionOS(.v1)],
    products: [
        .library(
            name: "Ospuze",
            targets: ["Ospuze"]),
    ],
    dependencies: [
        .package(url: "https://github.com/eisenhuth/yasu.git", exact: Version(1, 0, 1) ),
    ],
    targets: [
        .target(
            name: "Ospuze",
            dependencies: [
                .product(name: "YASU", package: "yasu")
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .testTarget(name: "OspuzeTests", dependencies: ["Ospuze"])
        
    ]
)
