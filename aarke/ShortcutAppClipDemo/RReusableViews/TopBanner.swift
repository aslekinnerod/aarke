//
//  TopBanner.swift
//  ShortcutAppClipDemo
//
//  Created by Asle Kinnerød on 22/11/2022.
//

import SwiftUI

struct TopBanner: View {
    let brand: Brand
    @State var isPresentingLanguages = false

    var body: some View {
        VStack {
            ZStack(alignment: .bottomLeading){
                Image("bilde")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.accentColor)
                HStack(alignment: .center){
                    VStack{
                        ZStack{
                            Circle()
                                .foregroundColor(.white)
                                .frame(width: 100, height: 100)
                                .offset(x: 5)

                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .padding(.leading)
                            
                        }
                        Button("Svenska") {
                            isPresentingLanguages = true
                        }
                        .popover(isPresented: $isPresentingLanguages) {
                                  LanguageView(brand: brand)
                               }
                        .padding(10)
                        .background(Color(red: 243/255, green: 242/255, blue: 239/255, opacity: 0.72))
                        .clipShape(Rectangle())
                        .cornerRadius(10)
                        .padding(.leading)
                        .padding(.bottom, 10)
                        .foregroundColor(.darkGray)
                        .font(.custom("Avenir Heava", size: 18))
                        .fontWeight(.bold)
                        
                    }
      
                }
            }
            .padding(.bottom, 12.0)
        }
        .ignoresSafeArea(.all)
    }
    
}

struct TopBanner_Previews: PreviewProvider {
    static var previews: some View {
        TopBanner(brand: .shortcut)
    }
}
