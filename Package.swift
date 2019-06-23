// swift-tools-version:5.1

import PackageDescription

let package = Package(
  name: "CancelBag",
  platforms: [
    .macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6)
  ],
  products: [
    .library(name: "CancelBag", targets: ["CancelBag"]),
  ],
  dependencies: [],
  targets: [
    .target(name: "CancelBag", dependencies: []),
    .testTarget(name: "CancelBagTests", dependencies: ["CancelBag"]),
  ]
)
