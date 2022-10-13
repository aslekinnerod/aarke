//
//  TopBanner.swift
//  WilfaClip
//
//  Created by Asle Kinnerød on 22/11/2022.
//

import SwiftUI

struct TopBanner: View {
    
    @State var language = false
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomLeading){
                Image("bilde")
                    .imageScale(.small)
                    .foregroundColor(.accentColor)
                HStack(alignment: .center){
                    VStack{
                        Image("logo")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .padding(.leading)
                            
                        Button("Norsk") {
                            language = true
                        }
                        .popover(isPresented: $language) {
                                  LanguageView()
                               }
                        .padding(10)
                        .background(Color(red: 243/255, green: 242/255, blue: 239/255, opacity: 0.72))
                        .clipShape(Rectangle())
                        .cornerRadius(10)
                        .padding(.leading)
                        .padding(.bottom, 10)
                        .foregroundColor(.darkGray)
                        .font(.custom("Helvetica neue", size: 18))
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
        TopBanner()
    }
}
