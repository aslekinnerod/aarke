//
//  SpareParts.swift
//  ShortcutAppClipDemo
//
//  Created by Asle Kinnerød on 22/11/2022.
//

import SwiftUI

struct SubProductsView: View {
    let brand: Brand

    var body: some View {
        ScrollView {
            TopBanner(brand: brand)
            HeadingView(title: brand.info.productInfoHeaderText)
            VStack {
                ForEach (0..<2) { i in
                    HStack {
                        ForEach (0..<2) { j in
                            let index = i + j + (i*2)
                            SparePartView(subProduct: brand.info.subProducts[index])
                        }
                    }
                    .padding(0)
                }
            }
        }
        .ignoresSafeArea(.all)
    }
}

struct SpareParts_Previews: PreviewProvider {
    static var previews: some View {
        SubProductsView(brand: .shortcut)
    }
}
