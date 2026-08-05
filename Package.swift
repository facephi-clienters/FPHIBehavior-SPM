// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FPHIBehavior-SPM",
    defaultLocalization: "es",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "FPHIBehavior-SPM",
            targets: ["FPHIBehavior-SPM", "FPHIBehavior"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "git@github.com:facephi/FPHIBehaviorSDK-SPM.git", .exactItem("6.33.1")),
        .package(url: "git@github.com:facephi/FPHILicenseActivator-SPM.git", .exactItem("1.0.2")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "FPHIBehavior-SPM",
            dependencies: ["FPHIBehavior", 
                           .product(name: "FPHILicenseActivator-SPM", package: "FPHILicenseActivator-SPM"),
                           .product(name: "FPHIBehaviorSDK-SPM", package: "FPHIBehaviorSDK-SPM")]
        ),
        .binaryTarget(
            name: "FPHIBehavior",
            url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/WIDGET/FPHIBehavior/1.0.3/FPHIBehavior.zip",
            checksum: "0da2178d30c19f8576221f4bd9a1625ad6102cf1ee6c15c0babcc742ea096564"
        ),
    ]
)
