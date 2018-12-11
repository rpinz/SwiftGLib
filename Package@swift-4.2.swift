// swift-tools-version:4.2

import PackageDescription

internal let package = Package(
    name: "GLib",
    products: [
        .library(
            name: "GLib",
            targets: [
                "GLib"
            ]
        )
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "GLib",
            dependencies: [
                "CGLib"
            ],
            path: "Sources"
        ),
        .testTarget(
            name: "GLibTests",
            dependencies: [
                "GLib"
            ]
        ),
        .systemLibrary(
            name: "CGLib",
            path: "Library/CGLib",
            pkgConfig: "glib-2.0 gio-unix-2.0",
            providers: [
                .brew(
                    [
                        "glib glib-networking gobject-introspection"
                    ]
                ),
                .apt(
                    [
                        "libglib2.0-dev glib-networking gobject-introspection libgirepository1.0-dev"
                    ]
                )
            ]
        )
    ],
    swiftLanguageVersions: [
        .v4_2,
        .version("5")
    ]
)
