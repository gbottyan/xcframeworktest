// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Test",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "Test",targets: ["Test"]),
    ],
    dependencies: [
       .package(
                            name: "Promises", url: "https://github.com/google/promises.git", from: "2.0.0"
                        )
    ],
    targets: [
        .binaryTarget(name: "Test", path: "Sources/Test.xcframework", dependencies: ["Promises"])
    ]
)
