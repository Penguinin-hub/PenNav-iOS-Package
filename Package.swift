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
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/531330583.zip",
            checksum: "3168c4dc513eeab8e6304c89ec40b0006f8598c7b1d007b034b0f3ed061ab47d"
        ),
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/531330213.zip",
            checksum: "a1d2eec5e3b846d9b58fe6df3524f5d0d040f5d9d13536b39492135108c93ee5"
        ),
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/531330212.zip",
            checksum: "d5fa9dded98f3e33a1065d52e74cc00366a54670f77bcc82c17c5c57b84845bb"
        ),
        .binaryTarget(
            name: "MapboxDirections",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/531330211.zip",
            checksum: "0aafb3504f6732403a2d61aff068f390f6ae082226d66e493934330407eab9f5"
        ),
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/531330214.zip",
            checksum: "6a0875043318e8b9246ca7db8952ca86e11c842e46327a96bcd1f789f8c039a6"
        ),
        .binaryTarget(
            name: "MapboxNavigationCore",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/531330210.zip",
            checksum: "418555fcffc903fb318f3561f513187e581e885ed9f2fdf4ba76bfab2b13172f"
        ),
        .binaryTarget(
            name: "MapboxNavigationNative",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/531330298.zip",
            checksum: "31092af14d01db7e812067e3877e2abfc34b545e680a8ba392e1e3ebfb2576f0"
        ),
        .binaryTarget(
            name: "MapboxNavigationUIKit",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/531330406.zip",
            checksum: "ea010ddc97480adcafe3d9668b490834bc0fe2eb3661f95a0a2303624bfeb012"
        ),
        .binaryTarget(
            name: "Penguin",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/531330473.zip",
            checksum: "c0f0643a77ea299f8e6744f23ce4cf164527e8fd8d11d1abff77fce376f7a075"
        ),
        .binaryTarget(
            name: "PenguinINRenderer",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/531330476.zip",
            checksum: "c61b1672e468baf61ac0592ebc9557724d18a618f1fd5d835418dd1d2894543b"
        ),
        .binaryTarget(
            name: "PenNavUI",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/531330414.zip",
            checksum: "5b6794e0bd7789c780ff3c52fb2f903b7dd8697388189ea5fdee37ac7c41063b"
        ),
        .binaryTarget(
            name: "pe_logic",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/531330602.zip",
            checksum: "2c32e4782a3a758f2c64cdc4d93a02f49852037f90668ef53d6c85ca683ffddf"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/531330523.zip",
            checksum: "c1118c1b4d69da66ef14521d9b9861f216d30b68a49b69fa7a97cc11cd9d2724"
        ),
        .binaryTarget(
            name: "_MapboxNavigationHelpers",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/531330530.zip",
            checksum: "553f9bbb06133c1665b172b54fbabff5dd88098afd2b9d9208a4bbb5238bab1a"
        ),
        .binaryTarget(
            name: "_MapboxNavigationLocalization",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/531330572.zip",
            checksum: "c3d330cd84e104552bebf489afa7b38555f70dd97ed5b18429926539452088e2"
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
