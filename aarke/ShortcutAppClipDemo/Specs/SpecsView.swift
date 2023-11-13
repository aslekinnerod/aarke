//
//  SpecsView.swift
//  ShortcutAppClipDemo
//
//  Created by Asle Kinnerød on 23/11/2022.
//

import SwiftUI

struct SpecsView: View {
    let brand: Brand

    var body: some View {
        VStack{
            TopBanner(brand: brand)
                .padding(.bottom, -60)
            HeadingView(title: brand.info.specsHeaderText)

            brand.info.specsImage
                .resizable()
                .scaledToFit()
            Spacer()
        }
    }
}

struct SpecsView_Previews: PreviewProvider {
    static var previews: some View {
        SpecsView(brand: .shortcut)
    }
}
