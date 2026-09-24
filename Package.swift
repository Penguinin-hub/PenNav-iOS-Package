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
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585512043.zip",
            checksum: "bee37783b6fb4946b2721256ab70c884b22bc358f5c8636fe233d1a4ccb08fd8"
        ),
        .binaryTarget(
            name: "_MapboxNavigationLocalization",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585512038.zip",
            checksum: "0dddf8521728332bfaec339b908f0d36abb534f345b9db3dc8bfd1e381cde99d"
        ),
        .binaryTarget(
            name: "libnav_mb",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585512042.zip",
            checksum: "a44dc1bf05c0716acbf0a7491930b4b2e03c3bb26b004528312c686ed0bccca0"
        ),
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585512045.zip",
            checksum: "05e3780c71aaa9a38f6e38c6ae2556342fca84e8e6ed0175cb6fd5da8b5db1a6"
        ),
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585512039.zip",
            checksum: "e09d4fdd5df927ce7deccd5e930ed67ae30e7cc1a093c2fc30bd94e48b2dc7e7"
        ),
        .binaryTarget(
            name: "MapboxDirections",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585512083.zip",
            checksum: "c0ad9197058358c8af6f3ba9906baef547d6d02b8808e56d1e6d2b25c0f33e7f"
        ),
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585512080.zip",
            checksum: "4f83f3fe87d68f1819f135ff1b3889a61244bd1b07507027baf91c379ed72d4b"
        ),
        .binaryTarget(
            name: "MapboxNavigationCore",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585512084.zip",
            checksum: "3a9b64219c4eb8a2e6eac3d8284cce15be437dd1dfcf4c877932e6d1eb97dc75"
        ),
        .binaryTarget(
            name: "MapboxNavigationNative",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585512120.zip",
            checksum: "988a7b139756cb10e816bec57a4348fb47f2bffec83ec78db9545be1fe9f1106"
        ),
        .binaryTarget(
            name: "MapboxNavigationUIKit",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585512157.zip",
            checksum: "47d10b4d7f5c490ebac1279890320a53885a40cc9c15e8bb8acde6de0a112baa"
        ),
        .binaryTarget(
            name: "pe_logic",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585512248.zip",
            checksum: "a1f04ef701b79c2d8a0039d3002ae9993a5f45e90ac68c0556a57aaf712d57d0"
        ),
        .binaryTarget(
            name: "Penguin",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585512247.zip",
            checksum: "a5f012a23e89ab80db2fa2cce1285f05b93e4df88d557342eae3e5844465d0fb"
        ),
        .binaryTarget(
            name: "PenguinINRenderer",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585512255.zip",
            checksum: "350df9109101caa7b09332650e7589bfacabf33399493b8a8025b5e6f9db9ba4"
        ),
        .binaryTarget(
            name: "PenNavUI",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585512262.zip",
            checksum: "8d641ce733f4da4f4476336e296ba58be8499b0ba498310a2f72f66bcae43ff4"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585512282.zip",
            checksum: "891e4602c07fde15d2e3fdbf0eeb421fd464cd02dbef11dc33232dd9bd2b72a1"
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
