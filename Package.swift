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
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585660212.zip",
            checksum: "45d9dd4b1a0581e3cee0a20602951e561a98f6214f7e10b34c098174bf5d9a29"
        ),
        .binaryTarget(
            name: "_MapboxNavigationLocalization",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585660209.zip",
            checksum: "5d6a0a9f46f4c6a36dc8c01431595e5eb5374afc787878fc836be003a86f8d13"
        ),
        .binaryTarget(
            name: "libnav_mb",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585660210.zip",
            checksum: "2b91a954d6c388b37f88dc45d51c510b45a287c6cb060f55064218be1d748cde"
        ),
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585660216.zip",
            checksum: "15081bde8a3f317d702b3e40c779a541d3e37b931dfd6c6ef2182c3d358025e9"
        ),
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585660211.zip",
            checksum: "20cde88b6e483ce890de8012e1bc81db27d225acf474e2b6258a205e252909db"
        ),
        .binaryTarget(
            name: "MapboxDirections",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585660254.zip",
            checksum: "a72ea561ae7b197d79db9cb6af5f6e96ea5755f6fcc799456fb7a945322b81fc"
        ),
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585660266.zip",
            checksum: "611d35d50ed2f1cdd34be9c66569ca7a18b7834fa93342ba8d6303e23337a768"
        ),
        .binaryTarget(
            name: "MapboxNavigationCore",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585660265.zip",
            checksum: "f5dd53f55f2344dc8ff2f7179e8aaa76e51ef28327270c024b99c3fdd74a7947"
        ),
        .binaryTarget(
            name: "MapboxNavigationNative",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585660347.zip",
            checksum: "59fb55c8e400477763f133e80b00352af4c1d7e8a86079cd786ebd85692a1bc4"
        ),
        .binaryTarget(
            name: "MapboxNavigationUIKit",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585660398.zip",
            checksum: "452ef8e96f6b7c30f6a093a45569a46faedd7cc26684aceafb08018885402c92"
        ),
        .binaryTarget(
            name: "pe_logic",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585660523.zip",
            checksum: "119f511729a0b306ea846d167c33e1edb773ddcbb9fe0a970213b32d3598551e"
        ),
        .binaryTarget(
            name: "Penguin",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585660533.zip",
            checksum: "ceaaa435643596e8923572ef59977a6b70b6d0e22b61d27eccee22f00215e7cd"
        ),
        .binaryTarget(
            name: "PenguinINRenderer",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585660546.zip",
            checksum: "27312bec6695f17d60cce8fb52e09a4ee5c0ce92b17fdcee164dc5556e765439"
        ),
        .binaryTarget(
            name: "PenNavUI",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585660551.zip",
            checksum: "b7e241782c5ec734b704754cd6a4788ffaf65ce50c53a04b8fad3852e3700f14"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585660569.zip",
            checksum: "37e7a945298918e347d1f0cb2f3d9da2b24dc2b778273873404c8fa7c220c4a4"
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
