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
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/368210759.zip",
            checksum: "9d57315f2af7a9efc2f714004c7e37e2d0d209539aee1a90c40f2639ca3dc2dc"
        ),
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/368210458.zip",
            checksum: "6338ac70f885d1b72f29e4a1682d7e7d4ed2fb286290df99c2862cafb712f6ba"
        ),
        .binaryTarget(
            name: "MapboxCommonWrapper",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/368210457.zip",
            checksum: "2c0c40e48943eab51f6fed2050afd1c5ec4344850de428e1a8aa9d63152f211c"
        ),
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/368210460.zip",
            checksum: "2368b2f9e535ecf3cb51d3225b9e9a71bd8a78dd6ab1a8f5f19413a47f24324f"
        ),
        .binaryTarget(
            name: "MapboxCoreMapsWrapper",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/368210459.zip",
            checksum: "5346bc93c6eaa2cbd5b8b7e99503b5049b0498e8e5dc9e42d2c27a02004d5727"
        ),
        .binaryTarget(
            name: "MapboxDirections",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/368210456.zip",
            checksum: "18b6e56cc7400112f1aae6f94a34a839a7d2d4fed677838de8c0f095009ff178"
        ),
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/368210463.zip",
            checksum: "259ecb2e47c06debeef7aa6435f8f9620a8fe28acb09b5bcc6502370aa7faa4e"
        ),
        .binaryTarget(
            name: "MapboxNavigationCore",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/368210469.zip",
            checksum: "802b0d9e121d5003e9376613728a2ca08f0539ab6ef0c52ec86d4880691f21b5"
        ),
        .binaryTarget(
            name: "MapboxNavigationNative",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/368210605.zip",
            checksum: "fbe568456105de8a00c272e09c543c0b4830b0ee1666120be1ea9dace9ccc3f1"
        ),
        .binaryTarget(
            name: "MapboxNavigationUIKit",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/368210606.zip",
            checksum: "c18ccfb4ebc52bda7f34d592080fdb0cc43370c5020e5768623e2e9bdce9fda6"
        ),
        .binaryTarget(
            name: "Penguin",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/368210674.zip",
            checksum: "cf2f582933e4d9c0f3f3d448226d31fd85b742ebfa965ef77dc15dc8ea1454ff"
        ),
        .binaryTarget(
            name: "PenguinINRenderer",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/368210713.zip",
            checksum: "00281890547cecb8ecb3cc60d47b7b017adb8e3eb0e83a911d4cdcdb262237a7"
        ),
        .binaryTarget(
            name: "PenNavUI",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/368210613.zip",
            checksum: "a5a7a4d9b38acd6e98d52483ab4f0e8aba87781d29d26084fbd85bd03ba44ac8"
        ),
        .binaryTarget(
            name: "pe_logic",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/368210761.zip",
            checksum: "a8f9b74f8c581c1c2af5c4d99b92f014225b2795a5e7d24d66229ee64ee4ff01"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/368210726.zip",
            checksum: "a567ad06be3f749764ae78663975600492b9de068464ee6bb7118240a49a1385"
        ),
        .binaryTarget(
            name: "_MapboxNavigationHelpers",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/368210733.zip",
            checksum: "94cf56313d25253b73ef0381deedd7785fa6caef8dcc09f3c5ae831a45651f45"
        ),
        .binaryTarget(
            name: "_MapboxNavigationLocalization",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/368210735.zip",
            checksum: "ae92f6a1762fbd46808462b452b7e476fe76a79b36f8043cf4a2f4412083a54b"
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
