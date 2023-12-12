import Foundation

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
