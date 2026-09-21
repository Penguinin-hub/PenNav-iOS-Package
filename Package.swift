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
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/578800183.zip",
            checksum: "7f53ccfeb0d18acffd498dad85fce6040e9086982ed6068a0cdf5164c07222ca"
        ),
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/578800184.zip",
            checksum: "98ee0e1efc7f8f1fc8ecdbf347919f0399d9e735649ce22d1d431e014fcb5494"
        ),
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/578800193.zip",
            checksum: "0affe264437cb614875b29eed462f07fbf3e214cb06edcb0a83fedb6f4190d6a"
        ),
        .binaryTarget(
            name: "MapboxDirections",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/578800232.zip",
            checksum: "a555817413e12baf98e1ab22ba45a4763b89baa570467ba11d0ac0bea007d726"
        ),
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/578800242.zip",
            checksum: "b93b3010d0752728349f939a29cea89e9cdc261ddf4a947310e372a5b3fba50f"
        ),
        .binaryTarget(
            name: "MapboxNavigationCore",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/578800248.zip",
            checksum: "5b794bd60c2115ab3520e274196550d8365075421460b092672a4ee2daea826c"
        ),
        .binaryTarget(
            name: "MapboxNavigationNative",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/578800305.zip",
            checksum: "6e49a09fce4a8a325f393aa38d7f25582d5d8779b55415367529cd4bafe07cfc"
        ),
        .binaryTarget(
            name: "MapboxNavigationUIKit",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/578800389.zip",
            checksum: "6a1a475717e1972f67a02e3da0f6b77cce2c2e44832a51905247357aee276f8d"
        ),
        .binaryTarget(
            name: "Penguin",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/578800432.zip",
            checksum: "d6bd955ac595a886287eeaac7e5e4ac25881ddcf325aeac6e15478df591e1e75"
        ),
        .binaryTarget(
            name: "PenguinINRenderer",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/578800466.zip",
            checksum: "d80345cfdd8065eb2ecde1fed2630db648f5990128ee442a3fc11d4ab738769b"
        ),
        .binaryTarget(
            name: "PenNavUI",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/578800471.zip",
            checksum: "041fd5d5123a09b95292dfe663f7ed2a25b4dceacaadcc04da7be6aa51aea88f"
        ),
        .binaryTarget(
            name: "pe_logic",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/578800399.zip",
            checksum: "7e3ff09a577961e852f29fed849ea23c623d54b09014d798c4851438eec17905"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/578800480.zip",
            checksum: "44666462c72919bf8b29139dcb81bbab847db905c41b9ade82f676afc9d41224"
        ),
        .binaryTarget(
            name: "_MapboxNavigationHelpers",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/578800186.zip",
            checksum: "a6e2f8f77d022e9b3456042d034eaa88d03f7aed9d4a76845bdcd6895c521271"
        ),
        .binaryTarget(
            name: "_MapboxNavigationLocalization",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/578800182.zip",
            checksum: "9c73a53c7470ae5fbcb702b7713c3a1afaa1b0c8a285b6839c081db8df2597eb"
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
