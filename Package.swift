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
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/437064156.zip",
            checksum: "7e818dae6f56a539250290cb07957418ce71c5a329fc00cd8b4c3e3c6aa452f0"
        ),
        .binaryTarget(
            name: "MapboxCommonWrapper",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/437064157.zip",
            checksum: "ef7d4729db5e5f3c8620a926b0017db0f6f73ca433ae9ac248a6f2e4756d78b9"
        ),
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/437064160.zip",
            checksum: "659d6225ea7ff0e55e78f3f31150f1959c473abb070073480520d66645a83fee"
        ),
        .binaryTarget(
            name: "MapboxCoreMapsWrapper",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/437064159.zip",
            checksum: "3d99d7e6b2e8c501b6bb484ef489f048294852d73669f19a8ab27132b393b16f"
        ),
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/437064158.zip",
            checksum: "8686272a154222290f5b15afd1edf8ae1f4045374f5bbe9bbe396ff11639ddab"
        ),
        .binaryTarget(
            name: "Penguin",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/437064188.zip",
            checksum: "33f7b311834f61d7bb03922edcd54f97e316c94fbcc70322056f22bfe268532f"
        ),
        .binaryTarget(
            name: "PenguinINRenderer",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/437064278.zip",
            checksum: "6ebcf790259a3674537cc822cddbd6ca8c91d1bf723853164ead113eb321e8d2"
        ),
        .binaryTarget(
            name: "PenNavUI",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/437064182.zip",
            checksum: "75795619b28c965a3c4087b08a8305672eed4290cc54b601c4e9388229a97804"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/437064319.zip",
            checksum: "9db19cc00460387f208bf37ae0defd2e11738d213ea0cb6722a16b7d5bfd70df"
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
    ]
)
