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
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://github.com/Penguinin-hub/PenNav-iOS-Package/releases/download/5.0.0/MapboxCommon.xcframework.zip",
            checksum: "5e96b1c31c59ede0dff743c24c393a5765d84fdea51b5f8dae1d0d9363687768"
        ),
        .binaryTarget(
            name: "MapboxCommonWrapper",
            url: "https://github.com/Penguinin-hub/PenNav-iOS-Package/releases/download/5.0.0/MapboxCommonWrapper.xcframework.zip",
            checksum: "53f180843166f0be0aded204f6d6d5734cb4311edb271b66eaafba0a83787d06"
        ),
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://github.com/Penguinin-hub/PenNav-iOS-Package/releases/download/5.0.0/MapboxCoreMaps.xcframework.zip",
            checksum: "64784631c01a4c4c68bdd23388903f7fe7899b3cf0f8f2f9d4accccd95b5d492"
        ),
        .binaryTarget(
            name: "MapboxCoreMapsWrapper",
            url: "https://github.com/Penguinin-hub/PenNav-iOS-Package/releases/download/5.0.0/MapboxCoreMapsWrapper.xcframework.zip",
            checksum: "0837f825dc66d1dd3b2b7bb0865f8978c348960ea074ea0c94cc8f6ce0862e19"
        ),
        .binaryTarget(
            name: "MapboxDirections",
            url: "https://github.com/Penguinin-hub/PenNav-iOS-Package/releases/download/5.0.0/MapboxDirections.xcframework.zip",
            checksum: "e928d1908a47732a99c892adc740a28ba8ebc90f82af30af90cf013f2e5e3f6f"
        ),
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://github.com/Penguinin-hub/PenNav-iOS-Package/releases/download/5.0.0/MapboxMaps.xcframework.zip",
            checksum: "497e2c1ed04ee8965021d4b2e09c532a655c1dc2eab4fa65867358d4ffd99933"
        ),
        .binaryTarget(
            name: "MapboxNavigationCore",
            url: "https://github.com/Penguinin-hub/PenNav-iOS-Package/releases/download/5.0.0/MapboxNavigationCore.xcframework.zip",
            checksum: "ae21bda97d31e4c8cfc6857403fd61c9ffb17a74d9a6cc9f3d69a510a84f93a7"
        ),
        .binaryTarget(
            name: "MapboxNavigationNative",
            url: "https://github.com/Penguinin-hub/PenNav-iOS-Package/releases/download/5.0.0/MapboxNavigationNative.xcframework.zip",
            checksum: "6519781458dfa1fecbfd43e5ea1abf4a61481199a25c8f00f3b2fce2b011011a"
        ),
        .binaryTarget(
            name: "MapboxNavigationUIKit",
            url: "https://github.com/Penguinin-hub/PenNav-iOS-Package/releases/download/5.0.0/MapboxNavigationUIKit.xcframework.zip",
            checksum: "914fafb6b05023013ea473aa21b07e22d1cf8524268640cc49309165047ca6ea"
        ),
        .binaryTarget(
            name: "PenNavUI",
            url: "https://github.com/Penguinin-hub/PenNav-iOS-Package/releases/download/5.0.0/PenNavUI.xcframework.zip",
            checksum: "99c89daa94c1e1cf5282df7818cbd0071741101ba42e7b9f9db6b26ee51fe4a8"
        ),
        .binaryTarget(
            name: "Penguin",
            url: "https://github.com/Penguinin-hub/PenNav-iOS-Package/releases/download/5.0.0/Penguin.xcframework.zip",
            checksum: "7f5b6976e68cb34d6a5f62d7ea68eb829d49b1afb35b0c57f747743744a9d1e8"
        ),
        .binaryTarget(
            name: "PenguinINRenderer",
            url: "https://github.com/Penguinin-hub/PenNav-iOS-Package/releases/download/5.0.0/PenguinINRenderer.xcframework.zip",
            checksum: "bc24572d905737b2c394d41a836fbb9f292365d316641a586ab9ffba2466065c"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://github.com/Penguinin-hub/PenNav-iOS-Package/releases/download/5.0.0/Turf.xcframework.zip",
            checksum: "6fc8110929164e22add0504fe0806435bddbf351ded185d44201bdfcf05c0429"
        ),
        .binaryTarget(
            name: "_MapboxNavigationHelpers",
            url: "https://github.com/Penguinin-hub/PenNav-iOS-Package/releases/download/5.0.0/_MapboxNavigationHelpers.xcframework.zip",
            checksum: "3704d7866e128fb63cf337f70c3e8789b85b3f2833ce128b58729c224d071e37"
        ),
        .binaryTarget(
            name: "_MapboxNavigationLocalization",
            url: "https://github.com/Penguinin-hub/PenNav-iOS-Package/releases/download/5.0.0/_MapboxNavigationLocalization.xcframework.zip",
            checksum: "ec504fa0120221fb2a63fa05ec20db58e8f13456010e09836affe9228dfae13a"
        ),
        .binaryTarget(
            name: "libnav_mb",
            url: "https://github.com/Penguinin-hub/PenNav-iOS-Package/releases/download/5.0.0/libnav_mb.xcframework.zip",
            checksum: "6d383cc1b18e428be633156b0446a7260f1b363fe84fdea117ede9b324021ba8"
        ),
        .binaryTarget(
            name: "pe_logic",
            url: "https://github.com/Penguinin-hub/PenNav-iOS-Package/releases/download/5.0.0/pe_logic.xcframework.zip",
            checksum: "f8bc9d8d87fe075d4f0cf6bd05ddf6ead4d46efa8b225b49709abbfc868ca698"
        ),
        .target(
            name: "PenNav",
            dependencies: [
                "MapboxCommon",
                "MapboxCommonWrapper",
                "MapboxCoreMaps",
                "MapboxCoreMapsWrapper",
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
