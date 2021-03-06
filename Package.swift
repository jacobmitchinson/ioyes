// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "IOYes",
    targets: [
      Target(
          name: "IOYes",
          dependencies: ["IOYesCore"]
      ),
      Target(name: "IOYesCore")
    ],
    dependencies: [
        .Package(url: "https://github.com/vapor/console.git", majorVersion: 2)
    ]
)
