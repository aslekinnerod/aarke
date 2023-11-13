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

    // MARK: - Parent View
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
    let subheading = "Wälkommen til Aarke"

    // Cell items in ContentView.
    let userManualText = "Bruksanvisning"
    let specificationsText = "Specifikationer"
    let productInformationText = "Produktinformation"
    let sparePartsText = "Reservdelar"
    let customerFeedbackText = "Recensioner"

    // MARK: - Notifications
    let notificationText: String = "Welcome to Register your Shortcut App"
    //"Registrer din Carbonator 3 nå 🥳"

    // MARK: - User Manual View
    let userManualTitleText: String = "BRUKSANVISNING"
    let userManualProductOverViewText: String = "Förpackningens innehåll"
    let userManualBeforeUseText: String = "Produktens komponenter"
    let userManualUserGuideText: String = "Installation av kollsyrepatron"
    let userManualCleaningText: String = "Kolsyra vatten"

    // Product Overview
    let userManualProductOverviewHeaderText: String = "Förpackningens innehåll"
    var userManualProductOverviewImage: Image {
        Image("\(assetFolderName)/user-manual-image1")
    }

    // Product Components
    let userManualProductComponentHeaderText: String = "Produktens komponenter"
    var userManualProductComponentImage: Image {
//        "Component 3"
        Image("\(assetFolderName)/user-manual-image2")
    }

    // User Guide View
    let userManualUserGuideViewHeaderText: String = "Installation av kollsyrepatron"
    var userManualUserGuideImage: Image {
        //        Image("Component 4")
        Image("\(assetFolderName)/user-manual-image3")
    }

    let userManualCleaningViewHeaderText: String = "Kolsyra vatten"
    var userManualCleaningImage: Image {
//        "Component 5"
        Image("\(assetFolderName)/user-manual-image4")
    }

    // MARK: - Specs View
    let specsHeaderText: String = "SPECIFIKATIONER"
    var specsImage: Image {
        Image("\(assetFolderName)/specs-image")
    }
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
