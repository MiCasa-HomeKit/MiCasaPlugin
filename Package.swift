// swift-tools-version:5.1.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "MiCasaPlugin",
  products: [
    // Products define the executables and libraries a package produces, and make them visible to other packages.
    .library(
      name: "MiCasaPlugin",
      type: .dynamic,
      targets: ["MiCasaPlugin"]),
  ],
  dependencies: [
    // Dependencies declare other packages that this package depends on.
    //.package(url: "https://github.com/MiCasa-HomeKit/HAP.git", .branch("master")),
    .package(url: "https://github.com/Bouke/HAP", .branch("master")),
    .package(url: "https://github.com/realm/SwiftLint", from: "0.40.3")
  ],
  targets: [
    // Targets are the basic building blocks of a package. A target can define a module or a test suite.
    // Targets can depend on other targets in this package, and on products in packages this package depends on.
    .target(
      name: "MiCasaPlugin",
      dependencies: ["HAP"]),
  ]
)
