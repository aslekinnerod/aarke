import SwiftUI

struct BrandInfo {
    let assetFolderName: String
    let name: String
    let productName: String

    // MARK: - Shared Constants
    let submitButtonText: String

    // MARK: - Images
    var headerImage: Image {
        Image("\(assetFolderName)/header-image")
    }
    var logoImage: Image {
        Image("\(assetFolderName)/logo")
    }

    var productImage: Image {
        Image("\(assetFolderName)/product-image")
    }

    // MARK: - Colors
    var primaryColor: Color {
        Color("\(assetFolderName)/color-primary")
    }

    var secondaryColor: Color {
        Color("\(assetFolderName)/color-secondary")
    }

    var textColor: Color {
        Color("\(assetFolderName)/color-text")
    }

    var buttonTextColor: Color {
        Color("\(assetFolderName)/color-button-text")
    }

    // Language
    let selectedLanguage: String
    let additionalLanguages: [String]

    let registerProductText: String
    let subheading: String

    // Cell items in ContentView.
    let userManualText: String
    let specificationsText: String
    let productInformationText: String
    let sparePartsText: String
    let customerFeedbackText: String

    // MARK: - Notifications
    let notificationText: String

    // MARK: - User Manual View
    let userManualTitleText: String

    // Product Overview
    let userManualProductOverviewHeaderText: String
    var userManualProductOverviewImage: Image {
        Image("\(assetFolderName)/user-manual-image-1")
    }

    // Product Components
    let userManualProductComponentHeaderText: String
    var userManualProductComponentImage: Image {
        //        "Component 3"
        Image("\(assetFolderName)/user-manual-image-2")
    }

    // User Guide View
    let userManualUserGuideViewHeaderText: String
    var userManualUserGuideImage: Image {
        //        Image("Component 4")
        Image("\(assetFolderName)/user-manual-image-3")
    }

    let userManualCleaningViewHeaderText: String
    var userManualCleaningImage: Image {
        //        "Component 5"
        Image("\(assetFolderName)/user-manual-image-4")
    }

    // MARK: - Specs View
    let specsHeaderText: String
    var specsImage: Image {
        Image("\(assetFolderName)/specs-image")
    }

    // MARK: - Product Information View
    let productInfoHeaderText: String
    let productInfoSubtitle1: String
    let productInfoBodyText1: String
    let productInfoSubtitle2: String
    let productInfoBodyText2: String
    let productInfoVideoURL: URL? = URL(string: "https://www.youtube.com/embed/zbCxs5Mx8rc")

    // MARK: - Spare Parts
    //Sub Product 1
    private let subProduct1Title: String
    private let subProduct1Detail: String
    private let subProduct1Price: String

    //Sub Product 2
    private let subProduct2Title: String
    private let subProduct2Detail: String
    private let subProduct2Price: String

    //Sub Product 3
    private let subProduct3Title: String
    private let subProduct3Detail: String
    private let subProduct3Price: String

    //Sub Product 4
    private let subProduct4Title: String
    private let subProduct4Detail: String
    private let subProduct4Price: String

    var subProducts: [SubProduct] {
        [SubProduct(
            image: Image("\(assetFolderName)/spare-part-image-1"),
            title: subProduct1Title,
            detail: subProduct1Detail,
            price: subProduct1Price
        ),
         SubProduct(
            image: Image("\(assetFolderName)/spare-part-image-2"),
            title: subProduct2Title,
            detail: subProduct2Detail,
            price: subProduct2Price
         ),
         SubProduct(
            image: Image("\(assetFolderName)/spare-part-image-3"),
            title: subProduct3Title,
            detail: subProduct3Detail,
            price: subProduct3Price
         ),
         SubProduct(
            image: Image("\(assetFolderName)/spare-part-image-3"),
            title: subProduct4Title,
            detail: subProduct4Detail,
            price: subProduct4Price
         ),
         SubProduct(
            image: Image("\(assetFolderName)/spare-part-image-4"),
            title: subProduct4Title,
            detail: subProduct4Detail,
            price: subProduct4Price
         )
        ]
    }

    // MARK: - Customer Feedback
    // Fields
    let customerFeedbackHeaderText: String
    let customerFeedbackNameTextFieldPlaceholder: String
    let customerFeedbackTextEditorTitleText: String
    let customerFeedbackSubmitButtonText: String

    // Alert
    let customerFeedbackAlertTitle: String
    let customerFeedbackAlertMessage: String

    // MARK: - Register Product
    let registerProductCountry: String
    let registerProductSerialNumberText: String
    let registerProductProductText: String
    let registerProductNamePlaceholderText: String
    let registerProductEmailPlaceholderText: String

    init(assetFolderName: String, name: String, productName: String, submitButtonText: String, selectedLanguage: String, additionalLanguages: [String], registerProductText: String, subheading: String, userManualText: String, specificationsText: String, productInformationText: String, sparePartsText: String, customerFeedbackText: String, notificationText: String, userManualTitleText: String, userManualProductOverViewText: String, userManualBeforeUseText: String, userManualUserGuideText: String, userManualCleaningText: String, userManualProductOverviewHeaderText: String, userManualProductComponentHeaderText: String, userManualUserGuideViewHeaderText: String, userManualCleaningViewHeaderText: String, specsHeaderText: String, productInfoHeaderText: String, productInfoSubtitle1: String, productInfoBodyText1: String, productInfoSubtitle2: String, productInfoBodyText2: String, subProduct1Title: String, subProduct1Detail: String, subProduct1Price: String, subProduct2Title: String, subProduct2Detail: String, subProduct2Price: String, subProduct3Title: String, subProduct3Detail: String, subProduct3Price: String, subProduct4Title: String, subProduct4Detail: String, subProduct4Price: String, customerFeedbackHeaderText: String, customerFeedbackNameTextFieldPlaceholder: String, customerFeedbackTextEditorTitleText: String, customerFeedbackSubmitButtonText: String, customerFeedbackAlertTitle: String, customerFeedbackAlertMessage: String, registerProductCountry: String, registerProductSerialNumberText: String, registerProductProductText: String, registerProductNamePlaceholderText: String, registerProductEmailPlaceholderText: String) {
        self.assetFolderName = assetFolderName
        self.name = name
        self.productName = productName
        self.submitButtonText = submitButtonText
        self.selectedLanguage = selectedLanguage
        self.additionalLanguages = additionalLanguages
        self.registerProductText = registerProductText
        self.subheading = subheading
        self.userManualText = userManualText
        self.specificationsText = specificationsText
        self.productInformationText = productInformationText
        self.sparePartsText = sparePartsText
        self.customerFeedbackText = customerFeedbackText
        self.notificationText = notificationText
        self.userManualTitleText = userManualTitleText
        self.userManualProductOverviewHeaderText = userManualProductOverviewHeaderText
        self.userManualProductComponentHeaderText = userManualProductComponentHeaderText
        self.userManualUserGuideViewHeaderText = userManualUserGuideViewHeaderText
        self.userManualCleaningViewHeaderText = userManualCleaningViewHeaderText
        self.specsHeaderText = specsHeaderText
        self.productInfoHeaderText = productInfoHeaderText
        self.productInfoSubtitle1 = productInfoSubtitle1
        self.productInfoBodyText1 = productInfoBodyText1
        self.productInfoSubtitle2 = productInfoSubtitle2
        self.productInfoBodyText2 = productInfoBodyText2
        self.subProduct1Title = subProduct1Title
        self.subProduct1Detail = subProduct1Detail
        self.subProduct1Price = subProduct1Price
        self.subProduct2Title = subProduct2Title
        self.subProduct2Detail = subProduct2Detail
        self.subProduct2Price = subProduct2Price
        self.subProduct3Title = subProduct3Title
        self.subProduct3Detail = subProduct3Detail
        self.subProduct3Price = subProduct3Price
        self.subProduct4Title = subProduct4Title
        self.subProduct4Detail = subProduct4Detail
        self.subProduct4Price = subProduct4Price
        self.customerFeedbackHeaderText = customerFeedbackHeaderText
        self.customerFeedbackNameTextFieldPlaceholder = customerFeedbackNameTextFieldPlaceholder
        self.customerFeedbackTextEditorTitleText = customerFeedbackTextEditorTitleText
        self.customerFeedbackSubmitButtonText = customerFeedbackSubmitButtonText
        self.customerFeedbackAlertTitle = customerFeedbackAlertTitle
        self.customerFeedbackAlertMessage = customerFeedbackAlertMessage
        self.registerProductCountry = registerProductCountry
        self.registerProductSerialNumberText = registerProductSerialNumberText
        self.registerProductProductText = registerProductProductText
        self.registerProductNamePlaceholderText = registerProductNamePlaceholderText
        self.registerProductEmailPlaceholderText = registerProductEmailPlaceholderText
    }
}
