import SwiftUI

struct CellView: View {
    let brand: Brand
    var title: String

    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 311, height: 75)
                .foregroundColor(brand.info.secondaryColor)
                .cornerRadius(5)
                
                Text(title)
                    .font(.custom("Avenir Heavy", size: 18))
                    .fontWeight(.bold)
                    .foregroundColor(brand.info.textColor)
        }
        .padding(.horizontal)
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(
            brand: .aarke,
            title: "Produktinformation"
        )
    }
}
