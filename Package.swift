// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "naveridlogin-sdk-ios",
    platforms: [.iOS(.v11)],
//    products: [
//        .library(
//            name: "naveridlogin-sdk-ios",
//            targets: ["naveridlogin-sdk-ios"]),
//    ],
//    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
//    ],
    targets: [
        .target(
            name: "naveridlogin-sdk-ios",
            dependencies: [],
            path: "./"),
    ]
)
