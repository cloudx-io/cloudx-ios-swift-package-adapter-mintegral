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
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-adapter-mintegral/releases/download/binary/8010700.0.0/CloudXMintegralAdapter.xcframework.zip",
            checksum: "746f95d837349cc2ab86024ac61e12963c4381e2422a858e5f6f525f01ac2a78"
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
