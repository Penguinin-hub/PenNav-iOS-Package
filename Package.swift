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
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435077733.zip",
            checksum: "d78cab15f81f1b729910bc7aa19de0dfcc01970bdc6b3c3779910635a6a80fc5"
        ),
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435077454.zip",
            checksum: "c3169374e3b16033482502d6685a9932eb92d45529f3a19c79ecffd328471fe4"
        ),
        .binaryTarget(
            name: "MapboxCommonWrapper",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435077462.zip",
            checksum: "706578ad071b706c297dd57f1ed4427052adfa7fbc92541602391238c2b3e221"
        ),
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435077459.zip",
            checksum: "22de31f1cbbe85772c23acbeb204ce25d19e9d96c2d8a3584ebd329f6d1fcc4f"
        ),
        .binaryTarget(
            name: "MapboxCoreMapsWrapper",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435077461.zip",
            checksum: "d2afa414935be7cb8edd8c381fc14b9e56bc83b9e3ee78195c445a721a8d711a"
        ),
        .binaryTarget(
            name: "MapboxDirections",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435077463.zip",
            checksum: "6710336e16704977e19e59c38731c146e3cffb148a4fe8db5c497a268084bddc"
        ),
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435077483.zip",
            checksum: "0fd1cc4445a4ff4b6337e56b833580c1df9ceb55a86e2427ec032c400990dd21"
        ),
        .binaryTarget(
            name: "MapboxNavigationCore",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435077482.zip",
            checksum: "2dd4cddb397eadb8b09164b8bddf2c2809e0f573f6ae8fdd652a3ba9274c6af0"
        ),
        .binaryTarget(
            name: "MapboxNavigationNative",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435077530.zip",
            checksum: "66693b83cd2f66db4928aa3dc200439e4c6ae06c12bca37529d73554251de0b4"
        ),
        .binaryTarget(
            name: "MapboxNavigationUIKit",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435077597.zip",
            checksum: "5c9b66ce1947f0f0c1311e18583295f9567007266d398e5113e7996337973581"
        ),
        .binaryTarget(
            name: "Penguin",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435077659.zip",
            checksum: "f99b3cbf6786d794cbbd9bcec6b55f825ad92008ab22fe0bdd7d4bc9ac711afe"
        ),
        .binaryTarget(
            name: "PenguinINRenderer",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435077674.zip",
            checksum: "0147343a33e4a480f673baebb66de8ae4e09497945cf327c69cccc43c839196d"
        ),
        .binaryTarget(
            name: "PenNavUI",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435077623.zip",
            checksum: "6f2f5a63dc81791c0c74707964d06dd2be4e125f0af8437caf6c8cb7b3609167"
        ),
        .binaryTarget(
            name: "pe_logic",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435077738.zip",
            checksum: "4769a049dfb27a2092ae945f871107bb10e5b50fd08efcf15a2444947cb62c02"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435077710.zip",
            checksum: "0b087d2ad8b148eaa49008e6ba3e1a4b2b3bf961a52c79a004b9bdb2b6e393ed"
        ),
        .binaryTarget(
            name: "_MapboxNavigationHelpers",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435077711.zip",
            checksum: "761e8da5dba7dcc7ad4f977b4c7ddbbdbfd8a37a3e0ee78a3b76b6abf9787696"
        ),
        .binaryTarget(
            name: "_MapboxNavigationLocalization",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/435077726.zip",
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
