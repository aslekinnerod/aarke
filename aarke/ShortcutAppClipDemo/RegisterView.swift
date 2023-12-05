//
//  RegisterView.swift
//  ShortcutAppClipDemo
//
//  Created by Asle Kinnerød on 22/11/2022.
//

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
                        .foregroundColor(.darkGray)
                    brand.info.productImage
                        .resizable()
                        .scaledToFit()
                        .frame(maxHeight: 350)

                    HStack(alignment: .center) {
                        Spacer()
                        RegisterProductInfoView(
                            titleText: brand.info.registerProductSerialNumberText,
                            bodyText: "6593794"
                        )
                        Spacer()
                        RegisterProductInfoView(
                            titleText: brand.info.registerProductProductText,
                            bodyText: brand.info.productName
                        )
                        Spacer()
                        RegisterProductInfoView(
                            titleText: "Land",
                            bodyText: brand.info.registerProductCountry
                        )
                        Spacer()
                    }

                    VStack(spacing: 16) {
                        CustomTextFieldView(
                            placeholderText: "NAMN",
                            text: $name
                        )

                        CustomTextFieldView(
                            placeholderText: "E-MAIL",
                            text: $email
                        )
                    }
                    .padding(32)
                }
            }
            CustomButtonView(buttonLabel: brand.info.submitButtonText) {
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
    let titleText: String
    let bodyText: String

    var body: some View {
        VStack {
            Text(titleText)
                .font(.custom("Helvetica Neue", size: 18))
                .fontWeight(.medium)
                .foregroundColor(.darkGray)
            Text(bodyText)
                .font(.custom("Helvetica Neue", size: 16))
                .fontWeight(.regular)
                .foregroundColor(.darkGray)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView(brand: .shortcut)
    }
}
