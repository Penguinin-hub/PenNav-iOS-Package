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
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/563569890.zip",
            checksum: "08636feac680f5cfa7a89f64a6362248fca15d326ed63b78b9e3ee9ab990876d"
        ),
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/563569584.zip",
            checksum: "b50e1a91178ff4a0678ab0087b6ed81072eceb90215deff67f3a2dc876e89eb3"
        ),
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/563569595.zip",
            checksum: "fc027c03758f1849d37abe6b7087228e9d498ed4d78863d34a1087fb0bdc815c"
        ),
        .binaryTarget(
            name: "MapboxDirections",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/563569583.zip",
            checksum: "5e5b9bf8a692a7123d1489dd7ea095db48b9544aedfe532aaa1821eecb145061"
        ),
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/563569590.zip",
            checksum: "555b4b309f9d078bc79eea6acd659ce35a03c4ec003b0cfa19132d9969a1bd45"
        ),
        .binaryTarget(
            name: "MapboxNavigationCore",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/563569588.zip",
            checksum: "6157d5f427e6c1d102c443861419a242397f29002dd81a4bdeaadc0cf8279946"
        ),
        .binaryTarget(
            name: "MapboxNavigationNative",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/563569692.zip",
            checksum: "019c0efc8055ca5d49b65899c4a1efb084a07775d2aa2124e33d1f3b0e2c9058"
        ),
        .binaryTarget(
            name: "MapboxNavigationUIKit",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/563569788.zip",
            checksum: "f7cc58558fe5e2a93347705b149ddf344b377eae8831c9abc7ac3d3951cbac92"
        ),
        .binaryTarget(
            name: "Penguin",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/563569824.zip",
            checksum: "5ed8fd681e389096444dab2da6088e7d3cd9b27afe1cb3a67e84c9a5f4898523"
        ),
        .binaryTarget(
            name: "PenguinINRenderer",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/563569826.zip",
            checksum: "3813a38c9d2d0995c8b00efb9334a50e6e42368366fc11915ab3fba99ca648ef"
        ),
        .binaryTarget(
            name: "PenNavUI",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/563569794.zip",
            checksum: "96c8309fee5b60d01cf9b9e08099fe018ae1a248f51d309297ab7499c5cb7fbf"
        ),
        .binaryTarget(
            name: "pe_logic",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/563569893.zip",
            checksum: "d365945049c6056f8e5b2b98acf2049df0703833b3306aa149f6bcb92016d317"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/563569845.zip",
            checksum: "aa37375e9d2b0f5c0ade09f485ac6dbb8c0f71e31e3aecaa405ec04cf11ac7e9"
        ),
        .binaryTarget(
            name: "_MapboxNavigationHelpers",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/563569865.zip",
            checksum: "120f35ba8bda84afd817046b6a1c9393006c50ea625734c3ee71e15b1b6bc6e4"
        ),
        .binaryTarget(
            name: "_MapboxNavigationLocalization",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/563569867.zip",
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
