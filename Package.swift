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
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/454585796.zip",
            checksum: "8c2ca67df386b2711bd6729bc85a10b9ac6c526132cda612cc459660d6500989"
        ),
        .binaryTarget(
            name: "MapboxCommonWrapper",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/454585789.zip",
            checksum: "ea16ac8868f74880ab705b77823b3594fd7889556f18b109f22d02fe6e712779"
        ),
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/454585795.zip",
            checksum: "384f933cdfcb9c5455bdc50ebe3eea97cda2ca258fdfe56670c5ff9f8ee0b60a"
        ),
        .binaryTarget(
            name: "MapboxCoreMapsWrapper",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/454585803.zip",
            checksum: "b6d5097a62433c684be4228a9c1140fcb8d3e64e41b4cb2925bf50d2b780e888"
        ),
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/454585788.zip",
            checksum: "6439c2f773706d5c2980046ef162602787fb10f1d717804f1b28fdeddbd3d5e7"
        ),
        .binaryTarget(
            name: "Penguin",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/454585892.zip",
            checksum: "3a6414b330a4dfc25c9a9933dd8f5bd4f52dacfe8fe6a1d0f7947da0a2d11fc5"
        ),
        .binaryTarget(
            name: "PenguinINRenderer",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/454586103.zip",
            checksum: "1a4102d9d1e8cb06b1bfcde32ccd32c6e19ea16c25326914c457195583f00f0e"
        ),
        .binaryTarget(
            name: "PenNavUI",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/454585849.zip",
            checksum: "0c68a34c5414eae198fb5530b1093f0505533b0180c8967d99e1931e2e4d3cd3"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/454586139.zip",
            checksum: "c57ae01dcb79b55d8d2b347d76cc8f677ee06b917dd7b6d17f5438b2b0471ca0"
        ),
        // --- END BINARY TARGETS ---
        .target(
            name: "PenNav",
            dependencies: [
                "MapboxCommon",
                "MapboxCoreMaps",
                "MapboxMaps",
                "Penguin",
                "PenguinINRenderer",
                "PenNavUI",
                "Turf"
            ]
        ),
    ]
)
