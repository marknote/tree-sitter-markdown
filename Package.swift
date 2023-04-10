// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TreeSitterMarkdown",

    products: [
        .library(name: "TreeSitterMarkdown", targets: ["TreeSitterMarkdown"]),
    ],

    dependencies: [
    ],

    targets: [
        

        // Original tree-sitter-markdown exported from https://github.com/ikatyang/tree-sitter-markdown/
        .target(name: "TreeSitterMarkdown", path: "src",
                sources: [ "parser.c",
                           "scanner.cc",
                           "tree_sitter_markdown/block_context.cc",
                           "tree_sitter_markdown/block_delimiter.cc",
                           "tree_sitter_markdown/block_scan.cc",
                           "tree_sitter_markdown/block_scan_util.generated.cc",
                           "tree_sitter_markdown/inline_context.cc",
                           "tree_sitter_markdown/inline_delimiter.cc",
                           "tree_sitter_markdown/inline_scan.cc",
                           "tree_sitter_markdown/inline_scan_util.generated.cc",
                           "tree_sitter_markdown/lexer.cc",
                           "tree_sitter_markdown/parse_table.cc",
                           "tree_sitter_markdown/predicate.cc",
                           "tree_sitter_markdown/predicate_util.generated.cc",
                           "tree_sitter_markdown/shared_type.cc",
                           "tree_sitter_markdown/util.cc"
                         ]),
    ]
)
