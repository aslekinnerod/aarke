import SwiftUI

struct ProductInformationView: View {
    let brand: Brand

    var body: some View {
        VStack {
            HeaderView(brand: brand)
            HeadingView(
                brand: brand,
                title: brand.info.productInfoHeaderText
            )
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
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea(.all)
        .foregroundStyle(brand.info.textColor)
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
                .padding(.bottom, 5)
            Text(subtitle)
                .font(.custom("Helvetica Neue", size: 15))
        }
        .padding(.horizontal)
    }
}
