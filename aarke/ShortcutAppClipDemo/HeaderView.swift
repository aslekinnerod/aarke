//
//  HeaderView.swift
//  ShortcutDemoClip
//
//  Created by Eric Davis on 21/11/2023.
//

import SwiftUI

struct HeaderView: View {
    let brand: Brand

    @State var register = false
    @State var language = false

    var body: some View {
        ZStack(alignment: .center) {
            brand.info.headerImage
                .resizable()
                .scaledToFill()
                .foregroundColor(.accentColor)
            HStack {
                VStack(alignment: .leading) {
                    brand.info.logoImage
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding(.leading)
                        .padding(.top, 24)

                    Spacer()

                    HStack(alignment: .center) {
                        Button(brand.info.selectedLanguage) {
                            language = true
                        }
                        .popover(isPresented: $language) {
                            LanguageView(brand: brand)
                        }
                        .padding(10)
                        .background(Color(red: 174/255, green: 162/255, blue: 154/255, opacity: 0.72))
                        .clipShape(Rectangle())
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.custom("Avenir Regular", size: 18))
                        .fontWeight(.bold)

                        Spacer()

                        Button(brand.info.registerProductText) {
                            register = true
                        }
                        .padding(10)
                        .background(Color(red: 174/255, green: 162/255, blue: 154/255, opacity: 0.72))
                        .clipShape(Rectangle())
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.custom("Avenir Regular", size: 18))
                        .fontWeight(.bold)
                    }
                    .padding()

                }
                NavigationLink(destination: RegisterView(brand: brand), isActive: $register) {
                    EmptyView()
                }
            }
            .frame(width: UIScreen.main.bounds.width)
        }
        .frame(height: 350)
        .onAppear {
            UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                if success {
                    print("All set!")
                } else if let error = error {
                    print(error.localizedDescription)
                }
            }
        }
    }
}

#Preview {
    HeaderView(brand: .aarke)
}
