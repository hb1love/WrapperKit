// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "WrapperKit",
  platforms: [
    .macOS(.v10_10),
    .iOS(.v9),
    .tvOS(.v9),
    .watchOS(.v2)
  ],
  products: [
    .library(
      name: "WrapperKit",
      targets: ["WrapperKit"]
    ),
  ],
  dependencies: [],
  targets: [
    .target(
      name: "WrapperKit"
    ),
    .testTarget(
      name: "WrapperKitTests",
      dependencies: ["WrapperKit"]
    )
  ],
  swiftLanguageVersions: [.v5]
)
