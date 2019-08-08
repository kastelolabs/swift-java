// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Java",
    products:[
        .library(
            name: "Java",
            targets:["Java"]
        )
    ],
    dependencies: [
        // TODO: remove coder and java_swift dependencies
        .package(url: "../swift-java-coder", .branch("swift5")),
        .package(url: "https://github.com/readdle/java_swift.git", .branch("master")),
    ],
    targets: [
        .target(
            name: "Java",
            dependencies: ["JavaCoder", "java_swift"],
            path: "Sources"
        ),
    ],
    swiftLanguageVersions: [4]
)
