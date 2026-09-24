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
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585689001.zip",
            checksum: "b12d680726d954ed3987e775cee279069a594fda1757a469e1057c6c2f0a48d5"
        ),
        .binaryTarget(
            name: "_MapboxNavigationLocalization",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585688998.zip",
            checksum: "3ec4357d1ae5259ebfd724573c1fa712f43dc47ecb4bcd6bdc280f28594f38c7"
        ),
        .binaryTarget(
            name: "libnav_mb",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585689000.zip",
            checksum: "b2b45e035a40681e717e8473c65f8336b66c0d517baaacf1b95a582953525d62"
        ),
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585689003.zip",
            checksum: "e77a93e91d10ff9afdddbb0c59344e14644e08c6cf4538d7315c3f748557c540"
        ),
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585688993.zip",
            checksum: "9ec30ba1b1fa5144115afade9b3a9a40c8916d7bf5b6b6051b959c3219079ff5"
        ),
        .binaryTarget(
            name: "MapboxDirections",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585689019.zip",
            checksum: "5ce2051c85709e1c65c339b1fcb619f3b7a35c35b7d19543f1e4c18b69a45a7b"
        ),
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585689022.zip",
            checksum: "6700cac691e95f87de13bb2c8b3de4acbeca4c677a6f553e83b04f4bef52f6bf"
        ),
        .binaryTarget(
            name: "MapboxNavigationCore",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585689023.zip",
            checksum: "4508c1cbf944cf95f56cd3bea19caf5bd613e28d4e5cb28c161474aed45e0f49"
        ),
        .binaryTarget(
            name: "MapboxNavigationNative",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585689080.zip",
            checksum: "0614e108775cc7e38af0a3bc9832d1f5c94483fadb38b8946754feb43bb2b4dd"
        ),
        .binaryTarget(
            name: "MapboxNavigationUIKit",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585689131.zip",
            checksum: "6840b5b878004a3c3928ee946c5375f3d1037afc67e64791a77c33a016b718ce"
        ),
        .binaryTarget(
            name: "pe_logic",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585689257.zip",
            checksum: "5af2271674a7d2b793313e81794368f9bd5f71c723dba87531ede5a4e08396e8"
        ),
        .binaryTarget(
            name: "Penguin",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585689269.zip",
            checksum: "7ccbd526bb24fd02ebf57c9390835d302ff0aaeb8c02528dfd19b99efc0212ca"
        ),
        .binaryTarget(
            name: "PenguinINRenderer",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585689282.zip",
            checksum: "80d84666da987d92d2fa687af4904af5a8e47125f88dac7f0e64e01039272eaa"
        ),
        .binaryTarget(
            name: "PenNavUI",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585689317.zip",
            checksum: "68df0007ecb2704a5910615457f38a6264a4269e007f946d33d453a30b8a5dda"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/585689325.zip",
            checksum: "b4a11b80a196641926f426daab5ce6b79d05a6ed73177351ffb0dbe37701f53c"
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
