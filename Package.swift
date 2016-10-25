import PackageDescription

let package = Package(
    name: "AnkitGoel",
    dependencies: [
        .Package(url: "https://github.com/vapor/vapor.git", majorVersion: 1, minor: 1),
        .Package(url: "https://github.com/himani93/logger-provider.git", majorVersion: 0)
    ],
    exclude: [
        "Config",
        "Database",
        "Localization",
        "Public",
        "Resources",
        "Tests",
    ]
)

