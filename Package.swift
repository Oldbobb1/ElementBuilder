// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ElementBuilder",
    platforms: [.iOS(.v17)],
    products: [
        .library(
            name: "ElementBuilder",
            targets: ["ElementBuilder"]),
    ],
    targets: [
        .target(
            name: "ElementBuilder"),
        .testTarget(
            name: "ElementBuilder.Tests",
            dependencies: ["ElementBuilder"]),
    ]
)
