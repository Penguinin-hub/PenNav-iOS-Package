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
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/538023315.zip",
            checksum: "a1d2eec5e3b846d9b58fe6df3524f5d0d040f5d9d13536b39492135108c93ee5"
        ),
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/538023316.zip",
            checksum: "d5fa9dded98f3e33a1065d52e74cc00366a54670f77bcc82c17c5c57b84845bb"
        ),
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/538023313.zip",
            checksum: "46c3f1478081eb4a68f6548200e4b44a608af53e299f3a7715b81e7025ee067d"
        ),
        .binaryTarget(
            name: "Penguin",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/538023317.zip",
            checksum: "a050e34fbbf8108e8033fcc4d488aa5c06698037eddbe7f4d5ad0de0f76bc316"
        ),
        .binaryTarget(
            name: "PenguinINRenderer",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/538023508.zip",
            checksum: "e758f3c77aa4b2a7ac412ccfb17c33a5a8d53cc087de0689780e2f810e62e983"
        ),
        .binaryTarget(
            name: "PenNavUI",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/538023319.zip",
            checksum: "7907512836317ebb8924e7c22f5c8f454e9ccf41b44599b19eaceb4a218088b1"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/538023534.zip",
            checksum: "66893f970216633865b5eede6bb0ab25b344bbdcb189fcb96e99093b135f94f6"
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
