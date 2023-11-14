//
//  ProductInformationView.swift
//  ShortcutAppClipDemo
//
//  Created by Asle Kinnerød on 24/11/2022.
//

import SwiftUI

struct ProductInformationView: View {
    let brand: Brand

    var body: some View {
        VStack{
            TopBanner(brand: brand)
                .padding(.bottom, -55)
                .offset(x: -12)
            HeadingView(title: brand.info.productInfoHeaderText)
                .padding(.bottom)

            ParagraphTextView(
                title: brand.info.productInfoSubtitle1,
                subtitle: brand.info.productInfoBodyText2
            )
            .padding(.bottom)
            
            ParagraphTextView(
                title: brand.info.productInfoSubtitle2,
                subtitle: brand.info.productInfoBodyText2
            )

            VideoView(url: brand.info.productInfoVideoURL)
                .padding(40)
        }
    }
}

struct ProductInformationView_Previews: PreviewProvider {
    static var previews: some View {
        ProductInformationView(brand: .shortcut)
    }
}

struct ParagraphTextView: View {
    let title: String
    let subtitle: String

    var body: some View {
        VStack(alignment: .leading){
            Text(title)
                .font(.custom("Helvetica Neue", size: 18))
                .fontWeight(.bold)
                .foregroundColor(.darkGray)
                .padding(.bottom, 5)
            Text(subtitle)
                .font(.custom("Helvetica Neue", size: 15))
                .foregroundColor(.textGray)
        }
        .padding(.horizontal)
    }
}
