import SwiftUI

struct RegisterView: View {
    let brand: Brand
    @Environment(\.presentationMode) var presentation

    @State var name: String = ""
    @State var email: String = ""
    @State var didTapSend: Bool = false

    var body: some View {
        VStack(spacing: 0) {
            ScrollView {
                VStack {
                    DetailHeaderView(title: "CARBONATOR 3")
                        .font(.custom("Helvetica neue", size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(brand.info.textColor)
                    brand.info.productImage
                        .resizable()
                        .scaledToFit()
                        .frame(maxHeight: 350)

                    HStack(alignment: .center) {
                        Spacer()
                        RegisterProductInfoView(
                            brand: brand,
                            titleText: brand.info.registerProductSerialNumberText,
                            bodyText: "6593794"
                        )
                        Spacer()
                        RegisterProductInfoView(
                            brand: brand,
                            titleText: brand.info.registerProductProductText,
                            bodyText: brand.info.productName
                        )
                        Spacer()
                        RegisterProductInfoView(
                            brand: brand,
                            titleText: "Land",
                            bodyText: brand.info.registerProductCountry
                        )
                        Spacer()
                    }

                    VStack(spacing: 16) {
                        CustomTextFieldView(
                            brand: brand,
                            placeholderText: "NAMN",
                            text: $name
                        )

                        CustomTextFieldView(
                            brand: brand,
                            placeholderText: "E-MAIL",
                            text: $email
                        )
                    }
                    .padding(32)
                }
            }
            CustomButtonView(brand: brand, buttonLabel: brand.info.submitButtonText) {
                didTapSend.toggle()
            }
            .background(Color.clear)
            .padding(.horizontal, 32)
        }
        .alert(isPresented: $didTapSend) {
            Alert(
                title: Text("Produktet er nå registrert!"),
                message: Text("Du vil nå kunne dra nytte av fordelene ved å registere produktet ditt bla bla bla..."),
                dismissButton: .default(Text("Ok"), action: {
                    withAnimation {
                        name = ""
                        email = ""
                    }
                }))
        }
    }
}

struct RegisterProductInfoView: View {
    let brand: Brand
    let titleText: String
    let bodyText: String

    var body: some View {
        VStack {
            Text(titleText)
                .font(.custom("Helvetica Neue", size: 18))
                .fontWeight(.medium)
                .foregroundColor(brand.info.textColor)
            Text(bodyText)
                .font(.custom("Helvetica Neue", size: 16))
                .fontWeight(.regular)
                .foregroundColor(brand.info.textColor)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView(brand: .shortcut)
    }
}
