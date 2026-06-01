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
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435072417.zip",
            checksum: "93934f42a05b2b5a72eb9e77cec8040693c9eece17660d961463cfe9ae98f6a3"
        ),
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435072055.zip",
            checksum: "c3169374e3b16033482502d6685a9932eb92d45529f3a19c79ecffd328471fe4"
        ),
        .binaryTarget(
            name: "MapboxCommonWrapper",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435072050.zip",
            checksum: "706578ad071b706c297dd57f1ed4427052adfa7fbc92541602391238c2b3e221"
        ),
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435072051.zip",
            checksum: "22de31f1cbbe85772c23acbeb204ce25d19e9d96c2d8a3584ebd329f6d1fcc4f"
        ),
        .binaryTarget(
            name: "MapboxCoreMapsWrapper",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435072052.zip",
            checksum: "d2afa414935be7cb8edd8c381fc14b9e56bc83b9e3ee78195c445a721a8d711a"
        ),
        .binaryTarget(
            name: "MapboxDirections",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435072053.zip",
            checksum: "6710336e16704977e19e59c38731c146e3cffb148a4fe8db5c497a268084bddc"
        ),
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435072085.zip",
            checksum: "0fd1cc4445a4ff4b6337e56b833580c1df9ceb55a86e2427ec032c400990dd21"
        ),
        .binaryTarget(
            name: "MapboxNavigationCore",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435072088.zip",
            checksum: "2dd4cddb397eadb8b09164b8bddf2c2809e0f573f6ae8fdd652a3ba9274c6af0"
        ),
        .binaryTarget(
            name: "MapboxNavigationNative",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435072178.zip",
            checksum: "66693b83cd2f66db4928aa3dc200439e4c6ae06c12bca37529d73554251de0b4"
        ),
        .binaryTarget(
            name: "MapboxNavigationUIKit",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435072278.zip",
            checksum: "5c9b66ce1947f0f0c1311e18583295f9567007266d398e5113e7996337973581"
        ),
        .binaryTarget(
            name: "Penguin",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435072349.zip",
            checksum: "7168e330c60d40cdcf5ed9b38a82c52368f2287fc32c2ddfe863f51b196387a0"
        ),
        .binaryTarget(
            name: "PenguinINRenderer",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435072366.zip",
            checksum: "abe1efbde208bb551a9b592b2744572451cd991d1e8b50d7658da75b71319f02"
        ),
        .binaryTarget(
            name: "PenNavUI",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435072287.zip",
            checksum: "c593bd67d198ae396873db8c3d33a0fc8cff5cb48a385bc82fcde4d4af2eedd0"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435072381.zip",
            checksum: "0b087d2ad8b148eaa49008e6ba3e1a4b2b3bf961a52c79a004b9bdb2b6e393ed"
        ),
        .binaryTarget(
            name: "_MapboxNavigationHelpers",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435072383.zip",
            checksum: "761e8da5dba7dcc7ad4f977b4c7ddbbdbfd8a37a3e0ee78a3b76b6abf9787696"
        ),
        .binaryTarget(
            name: "_MapboxNavigationLocalization",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435072399.zip",
            checksum: "c0222707d8300396ccc93a9feb42c52657fa0cd913e71314f15b178136aca371"
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
