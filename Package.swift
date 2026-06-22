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
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/454590406.zip",
            checksum: "8c2ca67df386b2711bd6729bc85a10b9ac6c526132cda612cc459660d6500989"
        ),
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/454590408.zip",
            checksum: "384f933cdfcb9c5455bdc50ebe3eea97cda2ca258fdfe56670c5ff9f8ee0b60a"
        ),
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/454590414.zip",
            checksum: "6439c2f773706d5c2980046ef162602787fb10f1d717804f1b28fdeddbd3d5e7"
        ),
        .binaryTarget(
            name: "Penguin",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/454590410.zip",
            checksum: "72597e73ce6fb88bf54d3bba63285e78ee798e7327c4a7271ebbcb44c4e21e68"
        ),
        .binaryTarget(
            name: "PenguinINRenderer",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/454590498.zip",
            checksum: "eebeecd3ed53c8d64f249bce4d97b15a27f33811b43489f80c3ba2ccdffd6a14"
        ),
        .binaryTarget(
            name: "PenNavUI",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/454590415.zip",
            checksum: "4469ca8f1573062e8c0e078df3f71b36ced0a79f9c4f9c59c3d41b4077b1d4c5"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/454590519.zip",
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
