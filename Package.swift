// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GiniHealthAPILibraryPinning",
    platforms: [.iOS(.v12)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "GiniHealthAPILibraryPinning",
            targets: ["GiniHealthAPILibraryPinning"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        
        .package(name: "TrustKit", url: "https://github.com/datatheorem/TrustKit.git", from: "2.0.0"),
        .package(name: "GiniHealthAPILibrary", url: "https://github.com/gini/health-api-library-ios.git", .exact("1.3.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "GiniHealthAPILibraryPinning",
            dependencies: ["GiniHealthAPILibrary", "TrustKit"]),
        
        .testTarget(
            name: "GiniHealthAPILibraryPinningTests",
            dependencies: ["GiniHealthAPILibraryPinning"]),
    ]
)
