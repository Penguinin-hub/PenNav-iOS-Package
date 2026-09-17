// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PenNav-iOS-Package",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "PenNav",
            targets: ["PenNav"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        // --- BEGIN BINARY TARGETS ---
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/569881036.zip",
            checksum: "b50e1a91178ff4a0678ab0087b6ed81072eceb90215deff67f3a2dc876e89eb3"
        ),
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/569881033.zip",
            checksum: "fc027c03758f1849d37abe6b7087228e9d498ed4d78863d34a1087fb0bdc815c"
        ),
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/569881035.zip",
            checksum: "555b4b309f9d078bc79eea6acd659ce35a03c4ec003b0cfa19132d9969a1bd45"
        ),
        .binaryTarget(
            name: "Penguin",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/569881032.zip",
            checksum: "4900bb17bd5beb27d2447a389ee225d00e051bce5057f50abc743927e148c61d"
        ),
        .binaryTarget(
            name: "PenguinINRenderer",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/569881288.zip",
            checksum: "235d1e19a962a46a022076fae74988ff113e556c2eee61ccab019ca5e1b9d829"
        ),
        .binaryTarget(
            name: "PenNavUI",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/569881337.zip",
            checksum: "3779f9bd992d96ff85242f9d933eca587b1af4eaa040e7252292d94f59be30a8"
        ),
        .binaryTarget(
            name: "pe_logic",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/569881041.zip",
            checksum: "bb9b89970460310ba34aa3fc059d5c41a4779dc2f3fad5dcb3e07387859518ac"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/569881490.zip",
            checksum: "aa37375e9d2b0f5c0ade09f485ac6dbb8c0f71e31e3aecaa405ec04cf11ac7e9"
        ),
        // --- END BINARY TARGETS ---
        .target(
            name: "PenNav",
            dependencies: [
                "MapboxCommon",
                "MapboxCoreMaps",
                "MapboxMaps",
                "pe_logic",
                "Penguin",
                "PenguinINRenderer",
                "PenNavUI",
                "Turf"
            ]
        ),
    ]
)
