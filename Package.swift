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
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/396100712.zip",
            checksum: "2b5ce33819c36b44a3875b01d431ac034f65e0fc81560af9eaff700a3dc8881d"
        ),
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/396100374.zip",
            checksum: "c3169374e3b16033482502d6685a9932eb92d45529f3a19c79ecffd328471fe4"
        ),
        .binaryTarget(
            name: "MapboxCommonWrapper",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/396100371.zip",
            checksum: "706578ad071b706c297dd57f1ed4427052adfa7fbc92541602391238c2b3e221"
        ),
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/396100372.zip",
            checksum: "22de31f1cbbe85772c23acbeb204ce25d19e9d96c2d8a3584ebd329f6d1fcc4f"
        ),
        .binaryTarget(
            name: "MapboxCoreMapsWrapper",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/396100373.zip",
            checksum: "d2afa414935be7cb8edd8c381fc14b9e56bc83b9e3ee78195c445a721a8d711a"
        ),
        .binaryTarget(
            name: "MapboxDirections",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/396100376.zip",
            checksum: "6710336e16704977e19e59c38731c146e3cffb148a4fe8db5c497a268084bddc"
        ),
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/396100388.zip",
            checksum: "0fd1cc4445a4ff4b6337e56b833580c1df9ceb55a86e2427ec032c400990dd21"
        ),
        .binaryTarget(
            name: "MapboxNavigationCore",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/396100390.zip",
            checksum: "5bc61592861b2bf3509e888da6c0fbb7feb49b16e055883a048ec21def370a83"
        ),
        .binaryTarget(
            name: "MapboxNavigationNative",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/396100475.zip",
            checksum: "66693b83cd2f66db4928aa3dc200439e4c6ae06c12bca37529d73554251de0b4"
        ),
        .binaryTarget(
            name: "MapboxNavigationUIKit",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/396100512.zip",
            checksum: "2f051a9305061573a36cdc40ad106b4cbae0ab655b8d676df529312d3c118d07"
        ),
        .binaryTarget(
            name: "Penguin",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/396100649.zip",
            checksum: "5bfe22c807fa9d582b7421de6614a14043e50a0024d5638cb47296094bea40fd"
        ),
        .binaryTarget(
            name: "PenguinINRenderer",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/396100658.zip",
            checksum: "dc770004df9c530f0d02b27c9d57a93445a0898ca71440ded3bf4b1d66d5465c"
        ),
        .binaryTarget(
            name: "PenNavUI",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/396100524.zip",
            checksum: "3739547fd0e1b179bc27eab46208fa94a58d6458e541c55dfc0cca3503ccbddc"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/396100673.zip",
            checksum: "11062c81cf8f952222909eeb739d729f4ccc154c79393423b747605c12cdc5a9"
        ),
        .binaryTarget(
            name: "_MapboxNavigationHelpers",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/396100690.zip",
            checksum: "761e8da5dba7dcc7ad4f977b4c7ddbbdbfd8a37a3e0ee78a3b76b6abf9787696"
        ),
        .binaryTarget(
            name: "_MapboxNavigationLocalization",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/396100706.zip",
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
