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
            HeaderView(brand: brand)
            HeadingView(
                brand: brand,
                title: brand.info.specsHeaderText
            )

            brand.info.specsImage
                .resizable()
                .scaledToFit()
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea(.all)
    }
}

struct SpecsView_Previews: PreviewProvider {
    static var previews: some View {
        SpecsView(brand: .shortcut)
    }
}
