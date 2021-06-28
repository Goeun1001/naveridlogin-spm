// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NaverLogin",
    platforms: [.iOS(.v11), .macOS(.v10_12)],
    products: [
        .library(
            name: "NaverThirdPartyLoginTarget",
            targets: ["NaverThirdPartyLoginTarget"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
          name: "NaverThirdPartyLoginTarget",
          dependencies: [.target(name: "NaverThirdPartyLoginWrapper",
                                 condition: .when(platforms: [.iOS]))],
          path: "SwiftPM-PlatformExclude/NaverThirdPartyLoginWrap"
        ),
        .target(
          name: "NaverThirdPartyLoginWrapper",
          dependencies: [
            .target(name: "NaverThirdPartyLogin", condition: .when(platforms: [.iOS])),
          ],
          path: "NaverThirdPartyLoginWrapper"
        ),
        .binaryTarget(name: "NaverThirdPartyLogin", path: "NaverThirdPartyLogin.xcframework")
    ]
)
