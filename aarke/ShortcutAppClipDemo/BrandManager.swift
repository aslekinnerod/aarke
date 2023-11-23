import Foundation

struct BrandManager {
    static let shortcut = BrandInfo(
        assetFolderName: "shortcut",
        name: "name",
        productName: "productName",
        submitButtonText: "submitButtonText",
        selectedLanguage: "selectedLanguage",
        additionalLanguages: [
            "language 1",
            "language 2",
            "language 3",
            "language 4",
            "language 5",
            "language 6",
            "language 7",
            "language 8"
        ],
        registerProductText: "registerProductText",
        subheading: "subheading",
        userManualText: "userManualText",
        specificationsText: "specificationsText",
        productInformationText: "productInformationText",
        sparePartsText: "sparePartsText",
        customerFeedbackText: "customerFeedbackText",
        notificationText: "notificationText",
        userManualTitleText: "userManualTitleText",
        userManualProductOverViewText: "userManualProductOverViewText",
        userManualBeforeUseText: "userManualBeforeUseText",
        userManualUserGuideText: "userManualUserGuideText",
        userManualCleaningText: "userManualCleaningText",
        userManualProductOverviewHeaderText: "userManualProductOverviewHeaderText",
        userManualProductComponentHeaderText: "userManualProductComponentHeaderText",
        userManualUserGuideViewHeaderText: "userManualUserGuideViewHeaderText",
        userManualCleaningViewHeaderText: "userManualCleaningViewHeaderText",
        specsHeaderText: "specsHeaderText",
        productInfoHeaderText: "productInfoHeaderText",
        productInfoSubtitle1: "productInfoSubtitle1",
        productInfoBodyText1: "productInfoBodyText1",
        productInfoSubtitle2: "productInfoSubtitle2",
        productInfoBodyText2: "productInfoBodyText2",
        subProduct1Title: "subProduct1Title",
        subProduct1Detail: "subProduct1Detail",
        subProduct1Price: "subProduct1Price",
        subProduct2Title: "subProduct2Title",
        subProduct2Detail: "subProduct2Detail",
        subProduct2Price: "subProduct2Price",
        subProduct3Title: "subProduct3Title",
        subProduct3Detail: "subProduct3Detail",
        subProduct3Price: "subProduct3Price",
        subProduct4Title: "subProduct4Title",
        subProduct4Detail: "subProduct4Detail",
        subProduct4Price: "subProduct4Price",
        customerFeedbackHeaderText: "customerFeedbackHeaderText",
        customerFeedbackNameTextFieldPlaceholder: "customerFeedbackNameTextFieldPlaceholder",
        customerFeedbackTextEditorTitleText: "customerFeedbackTextEditorTitleText",
        customerFeedbackSubmitButtonText: "customerFeedbackSubmitButtonText",
        customerFeedbackAlertTitle: "customerFeedbackAlertTitle",
        customerFeedbackAlertMessage: "customerFeedbackAlertMessage",
        registerProductCountry: "registerProductCountry",
        registerProductSerialNumberText: "registerProductSerialNumberText",
        registerProductProductText: "registerProductProductText",
        registerProductNamePlaceholderText: "registerProductNamePlaceholderText",
        registerProductEmailPlaceholderText: "registerProductEmailPlaceholderText"
    )

    static let aarke = BrandInfo(
        assetFolderName: "aarke",
        name: "Aarke",
        productName: "Aarke Carbonator 3",
        submitButtonText: "SKICKA",
        selectedLanguage: "Svenska",
        additionalLanguages: [
            "Finska",
            "Danska",
            "Norska",
            "Tyska",
            "Engelska",
            "Spanska",
            "Islandska"
        ],
        registerProductText: "Registrera Produkt",
        subheading: "Wälkommen til Aarke",
        userManualText: "Bruksanvisning",
        specificationsText: "Specifikationer",
        productInformationText: "Produktinformation",
        sparePartsText: "Reservdelar",
        customerFeedbackText: "Recensioner",
        notificationText: "Registrer din Carbonator 3 nå 🥳",
        userManualTitleText: "BRUKSANVISNING",
        userManualProductOverViewText: "Förpackningens innehåll",
        userManualBeforeUseText: "Produktens komponenter",
        userManualUserGuideText: "Installation av kollsyrepatron",
        userManualCleaningText: "Kolsyra vatten",
        userManualProductOverviewHeaderText: "Förpackningens innehåll",
        userManualProductComponentHeaderText: "Produktens komponenter",
        userManualUserGuideViewHeaderText: "Installation av kollsyrepatron",
        userManualCleaningViewHeaderText: "Kolsyra vatten",
        specsHeaderText: "SPECIFIKATIONER",
        productInfoHeaderText: "PRODUKTINFORMATION",
        productInfoSubtitle1: "CARBONATOR 3",
        productInfoBodyText1: "Carbonator 3 is a premium sparkling water maker in stainless steel. It’s built to last and comes in several.....",
        productInfoSubtitle2: "Best i test",
        productInfoBodyText2: "Aarke Carbonator 3 is built to last. With an obsession for detail and hones....",
        subProduct1Title: "POLERDUK",
        subProduct1Detail: "Reservedel WSPL-3B",
        subProduct1Price: "99,-",
        subProduct2Title: "DROPPFATS-GALLER",
        subProduct2Detail: "Reservedel WSPL-3B",
        subProduct2Price: "139,-",
        subProduct3Title: "STÅLKORK TIL PET-FLASKE",
        subProduct3Detail: "Reservedel WSPL-3B",
        subProduct3Price: "199,-",
        subProduct4Title: "GUMMI PACKNING",
        subProduct4Detail: "Reservedel WSPL-3B",
        subProduct4Price: "99,-",
        customerFeedbackHeaderText: "RECENSIONER",
        customerFeedbackNameTextFieldPlaceholder: "NAMN",
        customerFeedbackTextEditorTitleText: "BESKRIV",
        customerFeedbackSubmitButtonText: "SKICKA",
        customerFeedbackAlertTitle: "Tusen Takk!",
        customerFeedbackAlertMessage: "Din tilbakemelding vil bli behandlet fortløpende.",
        registerProductCountry: "Sverige",
        registerProductSerialNumberText: "Serienummer:",
        registerProductProductText: "Produkt:",
        registerProductNamePlaceholderText: "NAMN",
        registerProductEmailPlaceholderText: "E-MAIL"
    )
}

//struct BrandInfo {
//    let assetFolderName: String
//    let name: String
//    let productName: String = "Aarke Carbonator 3"
//
//    // MARK: - Shared Constants
//    let submitButtonText: String = "SKICKA"
//
//    // MARK: - Parent View
//    var headerImage: Image {
//        Image("\(assetFolderName)/headerImage")
//    }
//    var logoImage: Image {
//        Image("\(assetFolderName)/logo")
//    }
//
//    // Language
//    let selectedLanguage: String = "Svenska"
//    let additionalLanguages: [String] = [
//        "Finska",
//        "Danska",
//        "Norska",
//        "Tyska",
//        "Engelska",
//        "Spanska",
//        "Islandska"
//    ]
//
//    let registerProductText = "Registrera Produkt"
//    let subheading = "Wälkommen til Aarke"
//
//    // Cell items in ContentView.
//    let userManualText = "Bruksanvisning"
//    let specificationsText = "Specifikationer"
//    let productInformationText = "Produktinformation"
//    let sparePartsText = "Reservdelar"
//    let customerFeedbackText = "Recensioner"
//
//    // MARK: - Notifications
//    let notificationText: String = "Registrer din Carbonator 3 nå 🥳"
//
//    // MARK: - User Manual View
//    let userManualTitleText: String = "BRUKSANVISNING"
//    let userManualProductOverViewText: String = "Förpackningens innehåll"
//    let userManualBeforeUseText: String = "Produktens komponenter"
//    let userManualUserGuideText: String = "Installation av kollsyrepatron"
//    let userManualCleaningText: String = "Kolsyra vatten"
//
//    // Product Overview
//    let userManualProductOverviewHeaderText: String = "Förpackningens innehåll"
//    var userManualProductOverviewImage: Image {
//        Image("\(assetFolderName)/user-manual-image1")
//    }
//
//    // Product Components
//    let userManualProductComponentHeaderText: String = "Produktens komponenter"
//    var userManualProductComponentImage: Image {
//        //        "Component 3"
//        Image("\(assetFolderName)/user-manual-image2")
//    }
//
//    // User Guide View
//    let userManualUserGuideViewHeaderText: String = "Installation av kollsyrepatron"
//    var userManualUserGuideImage: Image {
//        //        Image("Component 4")
//        Image("\(assetFolderName)/user-manual-image3")
//    }
//
//    let userManualCleaningViewHeaderText: String = "Kolsyra vatten"
//    var userManualCleaningImage: Image {
//        //        "Component 5"
//        Image("\(assetFolderName)/user-manual-image4")
//    }
//
//    // MARK: - Specs View
//    let specsHeaderText: String = "SPECIFIKATIONER"
//    var specsImage: Image {
//        Image("\(assetFolderName)/specs-image")
//    }
//
//    // MARK: - Product Information View
//    let productInfoHeaderText: String = "PRODUKTINFORMATION"
//    let productInfoSubtitle1: String = "CARBONATOR 3"
//    let productInfoBodyText1: String = "Carbonator 3 is a premium sparkling water maker in stainless steel. It’s built to last and comes in several....."
//    let productInfoSubtitle2: String = "Best i test"
//    let productInfoBodyText2: String = "Aarke Carbonator 3 is built to last. With an obsession for detail and hones...."
//    let productInfoVideoURL: URL? = URL(string: "https://www.youtube.com/embed/zbCxs5Mx8rc")
//
//    // MARK: - Spare Parts
//    //Sub Product 1
//    private let subProduct1Title: String = "POLERDUK"
//    private let subProduct1Detail: String = "Reservedel WSPL-3B"
//    private let subProduct1Price: String = "99,-"
//
//    //Sub Product 2
//    private let subProduct2Title: String = "DROPPFATS-GALLER"
//    private let subProduct2Detail: String = "Reservedel WSPL-3B"
//    private let subProduct2Price: String = "139,-"
//
//    //Sub Product 3
//    private let subProduct3Title: String = "STÅLKORK TIL PET-FLASKE"
//    private let subProduct3Detail: String = "Reservedel WSPL-3B"
//    private let subProduct3Price: String = "199,-"
//
//    //Sub Product 4
//    private let subProduct4Title: String = "GUMMI PACKNING"
//    private let subProduct4Detail: String = "Reservedel WSPL-3B"
//    private let subProduct4Price: String = "99,-"
//
//    var subProducts: [SubProduct] {
//        [SubProduct(
//            image: Image("\(assetFolderName)/sub-product-image1"),
//            title: subProduct1Title,
//            detail: subProduct1Detail,
//            price: subProduct1Price
//        ),
//         SubProduct(
//            image: Image("\(assetFolderName)/sub-product-image2"),
//            title: subProduct2Title,
//            detail: subProduct2Detail,
//            price: subProduct2Price
//         ),
//         SubProduct(
//            image: Image("\(assetFolderName)/sub-product-image3"),
//            title: subProduct3Title,
//            detail: subProduct3Detail,
//            price: subProduct3Price
//         ),
//         SubProduct(
//            image: Image("\(assetFolderName)/sub-product-image4"),
//            title: subProduct4Title,
//            detail: subProduct4Detail,
//            price: subProduct4Price
//         ),
//         SubProduct(
//            image: Image("\(assetFolderName)/sub-product-image4"),
//            title: subProduct4Title,
//            detail: subProduct4Detail,
//            price: subProduct4Price
//         )
//        ]
//    }
//
//    // MARK: - Customer Feedback
//    // Fields
//    let customerFeedbackHeaderText: String = "RECENSIONER"
//    let customerFeedbackNameTextFieldPlaceholder: String = "NAMN"
//    let customerFeedbackTextEditorTitleText: String = "BESKRIV"
//    let customerFeedbackSubmitButtonText: String = "SKICKA"
//
//    // Alert
//    let customerFeedbackAlertTitle: String = "Tusen Takk!"
//    let customerFeedbackAlertMessage: String = "Din tilbakemelding vil bli behandlet fortløpende."
//
//    // MARK: - Register Product
//    let registerProductCountry: String = "Sverige"
//    let registerProductSerialNumberText: String = "Serienummer:"
//    let registerProductProductText: String = "Produkt:"
//    let registerProductNamePlaceholderText: String = "NAMN"
//    let registerProductEmailPlaceholderText: String = "E-MAIL"
//}
