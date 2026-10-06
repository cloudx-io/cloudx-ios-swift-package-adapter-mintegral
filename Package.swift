// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "CloudXMintegralAdapter",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "CloudXMintegralAdapter",
            targets: ["CloudXMintegralAdapterPackage"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-core.git",
            from: "3.9.1"
        ),
        .package(
            url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package.git",
            exact: "8.1.6"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXMintegralAdapter",
            url: "https://github.com/cloudx-io/cloudx-ios/releases/download/adapter-mintegral/8.1.6.1/CloudXMintegralAdapter.xcframework.zip",
            checksum: "ecea4f085f450cbf802052459ee77da2e8b933d3abebb360a999beff0b30b78e"
        ),
        .target(
            name: "CloudXMintegralAdapterPackage",
            dependencies: [
                "CloudXMintegralAdapter",
                .product(name: "CloudXCore", package: "cloudx-ios-swift-package-core"),
                .product(name: "MintegralAdSDK", package: "mintegraladsdk-swift-package"),
            ]
        ),
        .testTarget(
            name: "CloudXMintegralAdapterSwiftTests",
            dependencies: ["CloudXMintegralAdapterPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
        .testTarget(
            name: "CloudXMintegralAdapterObjCTests",
            dependencies: ["CloudXMintegralAdapterPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
    ]
)
