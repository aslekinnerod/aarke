import SwiftUI

@main
struct ShortcutAppClipDemo: App {
    @State var brand: Brand?
    @State var path = [Destination]()

    var body: some Scene {
        WindowGroup {
            Group {
                if let brand {
                    MainView(brand: brand, path: $path)
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
            if brand.rawValue.lowercased() == brandString.lowercased() {
                self.brand = brand
            }
        }

        guard let destinationString else {
            return
        }

        for destination in Destination.allCases {
            if destination.rawValue.lowercased() == destinationString.lowercased() {
                path = [destination]
            }
        }
    }
}
