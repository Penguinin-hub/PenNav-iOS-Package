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
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/437053839.zip",
            checksum: "2f3f86303147ae9a566bd075868868cac8b4f21d1b57c589304003d4f7440af3"
        ),
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/437053469.zip",
            checksum: "7e818dae6f56a539250290cb07957418ce71c5a329fc00cd8b4c3e3c6aa452f0"
        ),
        .binaryTarget(
            name: "MapboxCommonWrapper",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/437053465.zip",
            checksum: "ef7d4729db5e5f3c8620a926b0017db0f6f73ca433ae9ac248a6f2e4756d78b9"
        ),
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/437053468.zip",
            checksum: "659d6225ea7ff0e55e78f3f31150f1959c473abb070073480520d66645a83fee"
        ),
        .binaryTarget(
            name: "MapboxCoreMapsWrapper",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/437053471.zip",
            checksum: "3d99d7e6b2e8c501b6bb484ef489f048294852d73669f19a8ab27132b393b16f"
        ),
        .binaryTarget(
            name: "MapboxDirections",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/437053466.zip",
            checksum: "70f5218147c2884adabb30f2654eaccc6a23d07638add66773c0330a00330ae8"
        ),
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/437053484.zip",
            checksum: "8686272a154222290f5b15afd1edf8ae1f4045374f5bbe9bbe396ff11639ddab"
        ),
        .binaryTarget(
            name: "MapboxNavigationCore",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/437053485.zip",
            checksum: "588c7c13e313a190b8f07bce521659faa41cbc5d56285f99c70d26bc62cc5034"
        ),
        .binaryTarget(
            name: "MapboxNavigationNative",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/437053540.zip",
            checksum: "484b9162b37a1852979eced6f307b9a041f9d41fd4dce9ddbed87691f2da9ea1"
        ),
        .binaryTarget(
            name: "MapboxNavigationUIKit",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/437053593.zip",
            checksum: "6e4a364496dcebf8d522891df12a941e4de9bb6c7d28f52e39c561cc42af8016"
        ),
        .binaryTarget(
            name: "Penguin",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/437053762.zip",
            checksum: "33f7b311834f61d7bb03922edcd54f97e316c94fbcc70322056f22bfe268532f"
        ),
        .binaryTarget(
            name: "PenguinINRenderer",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/437053790.zip",
            checksum: "6ebcf790259a3674537cc822cddbd6ca8c91d1bf723853164ead113eb321e8d2"
        ),
        .binaryTarget(
            name: "PenNavUI",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/437053607.zip",
            checksum: "75795619b28c965a3c4087b08a8305672eed4290cc54b601c4e9388229a97804"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/437053818.zip",
            checksum: "9db19cc00460387f208bf37ae0defd2e11738d213ea0cb6722a16b7d5bfd70df"
        ),
        .binaryTarget(
            name: "_MapboxNavigationHelpers",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/437053819.zip",
            checksum: "0806f638361e44288affb270fc52ff2c7dbd1e000c57397b97cf9f18a27aa7bd"
        ),
        .binaryTarget(
            name: "_MapboxNavigationLocalization",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/437053827.zip",
            checksum: "58e8ff44822fae14c9967a375aa9d77c0ec880d4ab334242048633d8550c0cb2"
        ),
        // --- END BINARY TARGETS ---
        .target(
            name: "PenNav",
            dependencies: [
                "MapboxCommon",
                "MapboxCommonWrapper",
                "MapboxCoreMaps",
                "MapboxCoreMapsWrapper",
                "MapboxMaps",
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
