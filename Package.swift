// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PenNav-iOS-Package",
    platforms: [
        // --- BEGIN PLATFORMS ---
        .iOS("15.0"),
        // --- END PLATFORMS ---
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
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/782457062.zip",
            checksum: "bbec1885b6acc92be39393e82f1cdaf7fdd422f53b706e9a419225a4149dfaa1"
        ),
        .binaryTarget(
            name: "_MapboxNavigationLocalization",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/782457072.zip",
            checksum: "7807092ac659ca3ee614c63ef7882e267e1a50320adc3e5ae73a1900b8773c8d"
        ),
        .binaryTarget(
            name: "libnav_mb",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/782457063.zip",
            checksum: "3dbebe675d753feab2727484db9aff399cef251c684c9027f56f67432fe7c107"
        ),
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/782457069.zip",
            checksum: "f74002825b85c9b4aaf1ad0202eee40ff04b625e418366b2a05bf45d37c276c1"
        ),
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/782457073.zip",
            checksum: "f20bb366ca319a050f61d72db8a8cfedc533ccc88a5bb381437fc4dc40eeb5da"
        ),
        .binaryTarget(
            name: "MapboxDirections",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/782457186.zip",
            checksum: "6c1f2260483c3c4f47f2025ab79c7690e481790db67d2a98ab1bb5edc21aa091"
        ),
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/782457202.zip",
            checksum: "b825c1b6a2bac57c05c5cc4a6d263c25e1f0ab57b21d7595135c8442a9d0f6e3"
        ),
        .binaryTarget(
            name: "MapboxNavigationCore",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/782457201.zip",
            checksum: "30a2beb0d889c862526d091cea0967a7c50576d6f01d0db2a6f841aa48003732"
        ),
        .binaryTarget(
            name: "MapboxNavigationNative",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/782457424.zip",
            checksum: "e3f9b2bfa50d22604dec54d131494536fd0ac078f917d7ef0bec380622a48d1b"
        ),
        .binaryTarget(
            name: "MapboxNavigationUIKit",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/782457737.zip",
            checksum: "c512a0b1567e5bb9bb88e9401ff8aebf8c9458bca495b07410394b6e2eb03532"
        ),
        .binaryTarget(
            name: "pe_logic",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/782458331.zip",
            checksum: "69bb28842414431c9cdc19eeebf8d5312d1dd73ac56e89c602eb600bdf4d7184"
        ),
        .binaryTarget(
            name: "Penguin",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/782458433.zip",
            checksum: "0b503ec0fad59de48a3a97e9faa509586ecb353b356409155cbc0c9f2a5a5fcf"
        ),
        .binaryTarget(
            name: "PenguinINRenderer",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/782458619.zip",
            checksum: "596037b74b94a6e36593a2564c82820b66910b03cacd0499f7464ce7368e4979"
        ),
        .binaryTarget(
            name: "PenNavUI",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/782458827.zip",
            checksum: "5ca83bf0d0a2ff02ce643c61d7386669877b63028b4f34f23c10a13a2fb33b25"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/782458904.zip",
            checksum: "3c12d62ce93b35b9ee5711920aec8e9b4bb31189034c106a0e75090a87824630"
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
