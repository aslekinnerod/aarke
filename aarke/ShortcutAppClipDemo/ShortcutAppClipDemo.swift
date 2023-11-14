//
//  ShortcutAppClipDemoApp.swift
//  ShortcutAppClipDemo
//
//  Created by Asle Kinnerød on 21/11/2022.
//

import SwiftUI

enum Brand: String, CaseIterable {
    case porsche = "/porsche"
    case bmw = "/bmw"
    case shortcut = "/shortcut"

    var info: BrandInfo {
        switch self {
        case .porsche:
            return BrandInfo(assetFolderName: "porsche", name: "Porsche")
        case .bmw:
            return BrandInfo(assetFolderName: "bmw", name: "BMW")
        case .shortcut:
            return BrandInfo(assetFolderName: "shortcut", name: "Shortcut")
        }
    }
}

@main
struct ShortcutAppClipDemo: App {
    @State var brand: Brand?

    var body: some Scene {
        WindowGroup {
            Group {
                if let brand {
                    ContentView(brand: brand)
                } else {
                    ProgressView()
                }
            }
            .onContinueUserActivity(NSUserActivityTypeBrowsingWeb) { userActivity in
                guard let incomingURL = userActivity.webpageURL else { return }

                print(incomingURL)
                for brand in Brand.allCases {
                    if brand.rawValue == incomingURL.path() {
                        self.brand = brand
                    }
                }
            }
        }
    }
}
