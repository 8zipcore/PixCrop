// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "PixCrop",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "PixCrop",
            targets: ["PixCrop"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.0.0")
    ],
    targets: [
        .target(
            name: "PixCrop",
            dependencies: [
                "SnapKit"
            ],
            path: "Sources/PixCrop",
            resources: [
                .process("Assets")
            ]
        ),
        .testTarget(
            name: "PixCropTests",
            dependencies: ["PixCrop"],
            path: "Tests/PixCropTests"
        )
    ]
)
