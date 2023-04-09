// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterMarkdown",
    platforms: [.macOS(.v10_13), .iOS(.v11)],
    products: [
        .library(name: "TreeSitterMarkdown", targets: ["TreeSitterMarkdown"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "TreeSitterMarkdown",
                path: ".",
                exclude: [
                    "corpus",
                    "grammar.js",
                ],
                sources: [
                    "src/parser.c",
                    "src/scanner.cc",
                ],
                resources: [
                    .copy("queries")
                ],
                publicHeadersPath: "bindings/swift",
                cSettings: [.headerSearchPath("src")]),

    ]
)
