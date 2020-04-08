// swift-tools-version:5.1

import PackageDescription

let package = Package(
  name: "WrapperKit",
  platforms: [
    .iOS(.v8)
  ],
  products: [
    .library(
      name: "WrapperKit",
      targets: ["WrapperKit"]),
  ],
  dependencies: [],
  targets: [
    .target(
      name: "WrapperKit",
      path: "Sources"),
    .testTarget(
      name: "WrapperKitTests",
      dependencies: ["WrapperKit"],
      path: "Tests"),
  ]
)
