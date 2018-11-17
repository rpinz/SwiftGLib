// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "GLib",
    products: [
        .library(
            name: "GLib",
            targets: ["GLib"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/rpinz/CGLib",
            .branch("master"))
    ],
    targets: [
        .target(
            name: "GLib",
            dependencies: [],
            path: "Sources"),
        .testTarget(
            name: "GLibTests",
            dependencies: ["GLib"])
    ],
    swiftLanguageVersions: [4]
)
