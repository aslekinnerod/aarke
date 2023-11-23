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
    @State var country: String = ""
    @State var didTapSend: Bool = false

    var body: some View {
        ScrollView {
            VStack {
                DetailHeaderView(title: "CARBONATOR 3")
                    .font(.custom("Helvetica neue", size: 25))
                    .fontWeight(.bold)
                    .foregroundColor(.darkGray)
                brand.info.headerImage
                    .resizable()
                    .scaledToFill()
                VStack {
                    Text(brand.info.registerProductSerialNumberText)
                        .font(.custom("Helvetica Neue", size: 18))
                        .fontWeight(.medium)
                        .foregroundColor(.darkGray)
                    Text("6593794")
                        .font(.custom("Helvetica Neue", size: 16))
                        .fontWeight(.regular)
                        .foregroundColor(.darkGray)
                }
                .padding(.bottom)
                VStack {
                    Text(brand.info.registerProductProductText)
                        .font(.custom("Helvetica Neue", size: 18))
                        .fontWeight(.medium)
                        .foregroundColor(.darkGray)
                    Text(brand.info.productName)
                        .font(.custom("Helvetica Neue", size: 16))
                        .fontWeight(.regular)
                        .foregroundColor(.darkGray)
                }
                VStack(spacing: 32) {
                    CustomTextFieldView(
                        placeholderText: "NAMN",
                        text: $name
                    )

                    CustomTextFieldView(
                        placeholderText: "E-MAIL",
                        text: $email
                    )

                    CustomTextFieldView(
                        placeholderText: "Land",
                        text: $country
                    )

                    Button(action: {
                        didTapSend.toggle()
                    }) {
                        Text(brand.info.submitButtonText)
                            .frame(maxWidth: .infinity)
                            .font(.custom("Helveticaneue", size: 15))
                            .fontWeight(.bold)
                            .foregroundColor(.darkGray)
                            .padding(8)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color.lightGray)
                }
                .padding()
            }
            .onAppear {
                withAnimation {
                    country = brand.info.registerProductCountry
                }
            }
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

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView(brand: .shortcut)
    }
}
