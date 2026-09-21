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
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/579141061.zip",
            checksum: "b8febb90e043dced55170cf8dc8099b6f3d650f673bd6ab8b7f178b5d61a054e"
        ),
        .binaryTarget(
            name: "_MapboxNavigationLocalization",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/579141045.zip",
            checksum: "13c207210184841d7024097feedd92181a5894fd94deaca9691d0d47e80272a9"
        ),
        .binaryTarget(
            name: "libnav_mb",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/579141059.zip",
            checksum: "e3845a0b906121be7e58c177025f347797820c771f32f1cbc84f2e4e1745be29"
        ),
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/579141053.zip",
            checksum: "4ddaae379b4d1beb5faa2e7266491d88f7d758a8b720529e9f3cd67e37c653f7"
        ),
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/579141055.zip",
            checksum: "4bad40d723ecfa3fed72ba24d53ac0821feabe64a19c58d36c7e4ba33edfc9a5"
        ),
        .binaryTarget(
            name: "MapboxDirections",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/579141090.zip",
            checksum: "470160b8942e43b643371148ce398e18788b74f979a325737692b6a06af35d98"
        ),
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/579141094.zip",
            checksum: "52df82b56a2c1a6116846898b9ab1e2dbace10b9b0b92eb8a5d86c93801ff206"
        ),
        .binaryTarget(
            name: "MapboxNavigationCore",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/579141092.zip",
            checksum: "8bcb7c006e4e6154330cc34ac591305ffc0b7cf2437c18d52c500b299cad1d93"
        ),
        .binaryTarget(
            name: "MapboxNavigationNative",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/579141168.zip",
            checksum: "b817b6eb57cb29326236e831a55985e1ace6a48b1b36d9bb345e8ff11d197e52"
        ),
        .binaryTarget(
            name: "MapboxNavigationUIKit",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/579141237.zip",
            checksum: "aa4281775d2d931e1840493c1fe07e3518d7987c0be47e1641167b4013ceaa33"
        ),
        .binaryTarget(
            name: "pe_logic",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/579141241.zip",
            checksum: "9e117122a05e75c16a9d52f427224fe1b34512bb414c90fbc32cb416d430d4e2"
        ),
        .binaryTarget(
            name: "Penguin",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/579141282.zip",
            checksum: "790488f465f3cd719b406d33745d9dddae1567bbcfae5e5054f5016b4e39cd70"
        ),
        .binaryTarget(
            name: "PenguinINRenderer",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/579141318.zip",
            checksum: "c14a9bb9a4f4bdd3a0a4005c21576623b05d7e7be3fd8fbbc643b9db2fbf2c76"
        ),
        .binaryTarget(
            name: "PenNavUI",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/579141325.zip",
            checksum: "a9bc240ce0b6141fde432c593349016be4e492f298442c6f0f852896dbf20874"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/579141340.zip",
            checksum: "a811c331f9f9f982aef101121ab208a83ae495035e54b8957799d3aa65f27a75"
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
