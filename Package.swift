// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Test",
    platforms: [
          .iOS(.v10), .tvOS(.v10)
       ],
    products: [
        .library(name: "Test", targets: ["Test","TestDependencies"]),
    ],
    dependencies: [
       .package(name: "Promises", url: "https://github.com/google/promises.git", from: "2.0.0")
    ],
    targets: [
        .binaryTarget(name: "Test", path: "Sources/Test.xcframework" ),
        .target(name: "TestDependencies", dependencies: ["Promises",.product(name: "FBLPromises", package: "Promises")])
    ]
)
