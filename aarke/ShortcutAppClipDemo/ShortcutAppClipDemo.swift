import SwiftUI

enum Brand: String, CaseIterable {
    case aarke
    case wilfa
    case shortcut

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
    @State var path = [Destination]()

    var body: some Scene {
        WindowGroup {
            Group {
                if let brand {
                    ContentView(brand: brand, path: $path)
                } else {
                    ProgressView()
                }
            }
            .onContinueUserActivity(NSUserActivityTypeBrowsingWeb) { userActivity in
                guard let incomingURL = userActivity.webpageURL else { return }
                handleURL(incomingURL)
            }
        }
    }

    func handleURL(_ url: URL) {
        let urlPath = url.path()
        let strings = urlPath.split(separator: "/")

        let brandString = strings.first
        let destinationString = strings.last

        guard let brandString else {
            brand = .shortcut
            return
        }

        for brand in Brand.allCases {
            if brand.rawValue == brandString {
                self.brand = brand
            }
        }

        guard let destinationString else {
            return
        }

        for destination in Destination.allCases {
            if destination.rawValue.lowercased() == destinationString {
                path = [destination]
            }
        }
    }
}
