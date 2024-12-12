// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StikColors",
    platforms: [
        .iOS(.v15) // iOS 15+
    ],
    products: [
        .library(
            name: "StikColors",
            targets: ["StikColors"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "StikColors",
            dependencies: []
        ),
        .testTarget(
            name: "StikColorsTests",
            dependencies: ["StikColors"]
        )
    ]
)
