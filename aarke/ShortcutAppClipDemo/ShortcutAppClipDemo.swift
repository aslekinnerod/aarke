import SwiftUI

enum Brand: String, CaseIterable {
    case aarke = "/aarke"
    case wilfa = "/wilfa"
    case shortcut = "/shortcut"

    var info: BrandInfo {
        switch self {
        case .aarke:
            return BrandManager.aarke
        case .wilfa:
            return BrandManager.wilfa
        case .shortcut:
            return BrandManager.shortcut
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
                    ContentView(brand: .aarke)
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
