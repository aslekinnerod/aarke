//
//  ShortcutAppClipDemoApp.swift
//  ShortcutAppClipDemo
//
//  Created by Asle Kinnerød on 21/11/2022.
//

import SwiftUI

struct BrandInfo {
    let assetFolderName: String
    let name: String

    //MARK: - Parent View
    var headerImage: Image {
        Image("\(assetFolderName)/headerImage")
    }
    var logoImage: Image {
        Image("\(assetFolderName)/logo")
    }

    // Language
    let selectedLanguage: String = "Svenska"
    let additionalLanguages: [String] = [
        "Finska",
        "Danska",
        "Norska",
        "Tyska",
        "Engelska",
        "Spanska",
        "Islandska"
    ]

    let registerProductText = "Registrera Produkt"

    // "Wälkommen til Aarke"
    let subheading = "Full product name such as Rema 1000 Æ"

    let userManualText = "Bruksanvisning"
    let specificationsText = "Specifikationer"
    let productInformationText = "Produktinformation"
    let sparePartsText = "Reservdelar"
    let customerFeedbackText = "Recensioner"

    //MARK: - Notifications
    let notificationText: String = "Welcome to Register your Shortcut App"
    //"Registrer din Carbonator 3 nå 🥳"
}
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
                    ContentView(brand: .shortcut)
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
