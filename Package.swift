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
        // --- END PRODUCTS ---
    ],
    targets: [
        // --- BEGIN BINARY TARGETS ---
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/782473553.zip",
            checksum: "9da85b82efa90792696263890c592edbce0e0c682e69a216e77c5ed3ef393a28"
        ),
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/782473556.zip",
            checksum: "62c0b0106a50faf5c43341a19965502f5ca2904b56a91eb5e26b6a7f74c7ee90"
        ),
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/782473574.zip",
            checksum: "6a124b26a464542ec44590a26a4576ed03755964c9fc69a22f0a6a9b521947d9"
        ),
        .binaryTarget(
            name: "pe_logic",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/782473554.zip",
            checksum: "65237f3e3c355363fc1842e5dbfcffb2500700bc0704378f15599e510a7b30b5"
        ),
        .binaryTarget(
            name: "Penguin",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/782473559.zip",
            checksum: "7006f6b354c1dc38bf214293babc9975fea58c04754aca6da34ac0363838da78"
        ),
        .binaryTarget(
            name: "PenguinINRenderer",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/782474049.zip",
            checksum: "25a3b370d465aff925572d43dacba0c0a2723f4acb206afb2e27b75d9911d810"
        ),
        .binaryTarget(
            name: "PenNavUI",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/782474144.zip",
            checksum: "1f13f75c610cfc2bbed7b2a4d118e96d96bb872102691c56e2953d29309a8b4d"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://api.github.com/repos/Penguinin-hub/PenNav-iOS-Package/releases/assets/782474308.zip",
            checksum: "111de1198fe172870c8417692c5c2e53d7a7865374ae39a96c437c9958e35c96"
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
        // --- END TARGETS ---
    ]
)
