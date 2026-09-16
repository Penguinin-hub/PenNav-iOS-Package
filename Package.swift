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
        .library(
            name: "PenNavRoaming",
            targets: ["PenNavRoaming"]
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        // --- BEGIN BINARY TARGETS ---
        .binaryTarget(
            name: "libnav_mb",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/568697921.zip",
            checksum: "e71c7bf454c63cd8c86a4538ea5d6770ba6d54ba6565732bbb8e81ef1ef97e30"
        ),
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/568697920.zip",
            checksum: "b50e1a91178ff4a0678ab0087b6ed81072eceb90215deff67f3a2dc876e89eb3"
        ),
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/568697923.zip",
            checksum: "fc027c03758f1849d37abe6b7087228e9d498ed4d78863d34a1087fb0bdc815c"
        ),
        .binaryTarget(
            name: "MapboxDirections",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/568697961.zip",
            checksum: "5e5b9bf8a692a7123d1489dd7ea095db48b9544aedfe532aaa1821eecb145061"
        ),
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/568697964.zip",
            checksum: "555b4b309f9d078bc79eea6acd659ce35a03c4ec003b0cfa19132d9969a1bd45"
        ),
        .binaryTarget(
            name: "MapboxNavigationCore",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/568697965.zip",
            checksum: "6157d5f427e6c1d102c443861419a242397f29002dd81a4bdeaadc0cf8279946"
        ),
        .binaryTarget(
            name: "MapboxNavigationNative",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/568698004.zip",
            checksum: "019c0efc8055ca5d49b65899c4a1efb084a07775d2aa2124e33d1f3b0e2c9058"
        ),
        .binaryTarget(
            name: "MapboxNavigationUIKit",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/568698071.zip",
            checksum: "f7cc58558fe5e2a93347705b149ddf344b377eae8831c9abc7ac3d3951cbac92"
        ),
        .binaryTarget(
            name: "Penguin",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/568698115.zip",
            checksum: "e5f973cbafdc60f38abf0871cd99db870974ed36d8f6e3caafdfcda9a2f75a6f"
        ),
        .binaryTarget(
            name: "PenguinINRenderer",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/568698150.zip",
            checksum: "b8d03c2b993d629edcc45ebb0a5cf77f570b9a86b784e8f4f0b3e64782a5daad"
        ),
        .binaryTarget(
            name: "PenNavUI",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/568698153.zip",
            checksum: "918f63d812c8b48afbea0c64e59645d3dbbcdf94d9bc5c94ac897e17e104c5c1"
        ),
        .binaryTarget(
            name: "pe_logic",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/568698083.zip",
            checksum: "72e7a38bbd45fcd9c3451c255891bd2ade41572fc79253da1005191f9787d56d"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/568698161.zip",
            checksum: "aa37375e9d2b0f5c0ade09f485ac6dbb8c0f71e31e3aecaa405ec04cf11ac7e9"
        ),
        .binaryTarget(
            name: "_MapboxNavigationHelpers",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/568697925.zip",
            checksum: "120f35ba8bda84afd817046b6a1c9393006c50ea625734c3ee71e15b1b6bc6e4"
        ),
        .binaryTarget(
            name: "_MapboxNavigationLocalization",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/568697926.zip",
            checksum: "f2dc49addee536c6dfbd3b9b945c33102cabcf643b4a30b2fa7a51d7aca1d85c"
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
        .target(
            name: "PenNavRoaming",
            dependencies: [
                "_MapboxNavigationHelpers",
                "_MapboxNavigationLocalization",
                "libnav_mb",
                "MapboxDirections",
                "MapboxNavigationCore",
                "MapboxNavigationNative",
                "MapboxNavigationUIKit"
            ]
        )
    ]
)
