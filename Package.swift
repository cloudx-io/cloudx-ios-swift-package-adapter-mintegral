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
            exact: "8.1.7"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXMintegralAdapter",
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-adapter-mintegral/releases/download/binary/8010701.0.0/CloudXMintegralAdapter.xcframework.zip",
            checksum: "dbc0b38739fcfc44304852d84ca6c7571ead54f631a0696afafd60fcbd61f577"
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
