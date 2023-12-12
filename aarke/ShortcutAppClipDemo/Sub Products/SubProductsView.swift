import SwiftUI

struct SubProductsView: View {
    let brand: Brand

    var body: some View {
        ScrollView {
            HeaderView(brand: brand)
            HeadingView(
                brand: brand,
                title: brand.info.productInfoHeaderText
            )

            VStack {
                ForEach (0..<2) { i in
                    HStack {
                        ForEach (0..<2) { j in
                            let index = i + j + (i*2)
                            SparePartView(brand: brand, subProduct: brand.info.subProducts[index])
                        }
                    }
                    .padding(0)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea(.all)
    }
}

struct SubProductsView_Previews: PreviewProvider {
    static var previews: some View {
        SubProductsView(brand: .shortcut)
    }
}
