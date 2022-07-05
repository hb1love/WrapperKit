// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "WrapperKit",
  platforms: [
    .macOS(.v10_12),
    .iOS(.v9),
    .tvOS(.v10),
    .watchOS(.v3)
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
