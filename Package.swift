// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PenNav-iOS-Package",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // --- BEGIN PRODUCTS ---
        .library(
            name: "PenNav",
            targets: ["PenNav"]
        ),
        .library(
            name: "PenNavRoaming",
            targets: ["PenNavRoaming"]
        ),
        // --- END PRODUCTS ---
    ],
    targets: [
        // --- BEGIN BINARY TARGETS ---
        .binaryTarget(
            name: "_MapboxNavigationHelpers",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/580052702.zip",
            checksum: "081d010be89b42df09e823fd7bbf5823f7ef7b96a1facf982a277c707cce20f6"
        ),
        .binaryTarget(
            name: "_MapboxNavigationLocalization",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/580052703.zip",
            checksum: "7b45458a4deb1871acf2ffc0f642eec16e2bdb019fe960a8639f7ec23d7339e5"
        ),
        .binaryTarget(
            name: "libnav_mb",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/580052698.zip",
            checksum: "96394183cdddacbcb30c5f9ab92570ee994eb55c2e7f94f85069845b6ee5cd74"
        ),
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/580052699.zip",
            checksum: "644abdd475b5c0c6909cdcc27dc4f4a3119a96689ecbfd76db89187a93b4642f"
        ),
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/580052695.zip",
            checksum: "30979fd01acc572451b9b70ff54db665ec6328488d603c809e4df7fa921ed933"
        ),
        .binaryTarget(
            name: "MapboxDirections",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/580052727.zip",
            checksum: "864d8b557a59e1bfe2890d300107941c8f3b2185341e16763d88e17553545e1e"
        ),
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/580052731.zip",
            checksum: "3963753dfdd347afdf4d56d304fa0cd4198489dd898560f772f84d1a53c1a31b"
        ),
        .binaryTarget(
            name: "MapboxNavigationCore",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/580052728.zip",
            checksum: "143f3cc2d04e5b7f6deb0e8908719bdc8b1d1b04663c011a57ebd556c9376363"
        ),
        .binaryTarget(
            name: "MapboxNavigationNative",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/580052775.zip",
            checksum: "557a905581366996d629fe9b684a4840b0c0b714f3ada1a1a8f74998ec4c698e"
        ),
        .binaryTarget(
            name: "MapboxNavigationUIKit",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/580052800.zip",
            checksum: "fc5892e880df9e590ea6f81678106aba7a7ee7579c33b958886fa8abdfd48711"
        ),
        .binaryTarget(
            name: "pe_logic",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/580052804.zip",
            checksum: "cad4e72810777e1665016924a285d9e64e8fbcdc6ef36e3bf44d0f4754078665"
        ),
        .binaryTarget(
            name: "Penguin",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/580052828.zip",
            checksum: "898688cf412853ee631eec40733428b3207c5c582355b5cfa70becf69c89eaba"
        ),
        .binaryTarget(
            name: "PenguinINRenderer",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/580052844.zip",
            checksum: "1b898623e8382a40e76a3f5296370387ab0d357b78efdfca947f90f6ceb319ad"
        ),
        .binaryTarget(
            name: "PenNavUI",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/580052845.zip",
            checksum: "4dbf59e4ad840852c03d9685abf76e70b16d5af138f0a76ccb578160b9cf840b"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/580052849.zip",
            checksum: "ba27a8bf459fccce7b215cb568844babcec050070dbc586a9c70a7ca71b1eb6b"
        ),
        // --- END BINARY TARGETS ---
        // --- BEGIN TARGETS ---
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
        ),
        // --- END TARGETS ---
    ]
)
