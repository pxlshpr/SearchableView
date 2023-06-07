// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SearchableView",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SearchableView",
            targets: ["SearchableView"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pxlshpr/SwiftHaptics", from: "0.1.3"),
        .package(url: "https://github.com/pxlshpr/ColorSugar", from: "0.0.7"),
        .package(url: "https://github.com/pxlshpr/FormSugar", from: "0.0.6"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SearchableView",
            dependencies: [
                .product(name: "SwiftHaptics", package: "swifthaptics"),
                .product(name: "ColorSugar", package: "colorsugar"),
                .product(name: "FormSugar", package: "formsugar"),
            ]),
        .testTarget(
            name: "SearchableViewTests",
            dependencies: ["SearchableView"]),
    ]
)
