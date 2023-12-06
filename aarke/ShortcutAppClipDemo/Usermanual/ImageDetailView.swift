import SwiftUI

struct ImageDetailView: View {
    let brand: Brand
    let title: String
    let image: Image

    var body: some View {
        VStack{
            DetailHeaderView(title: title)
            image
                .resizable()
                .scaledToFit()
                .padding()

            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .foregroundStyle(brand.info.textColor)
    }
}

struct ProductOverView_Previews: PreviewProvider {
    static var previews: some View {
        ImageDetailView(
            brand: .shortcut,
            title: "Title",
            image: Image(systemName: "person")
        )
    }
}
