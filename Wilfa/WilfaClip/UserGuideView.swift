//
//  UserguideView.swift
//  WilfaClip
//
//  Created by Asle Kinnerød on 23/11/2022.
//

import SwiftUI

    struct UserguideView: View {
        
        let images = [Image("image0"), Image("image1"), Image("image2")]
        @State var n = 0
        @State var index = 0
        
        var body: some View {
            VStack{
                DetailHeaderView(title: "Bruk")
                TabView (selection: self.$index) {
                    ForEach(0..<3) { i in
                     images[i]
                            .resizable()
                    }
                    .padding(.all, 10)
                }
                .frame(width: UIScreen.main.bounds.width)
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .onChange(of: index) { newValue in
                    n = newValue
                }
                
                
                HStack{
                    ForEach(0..<3){ i in
                        Rectangle()
                            .fill(i == n ? .black : Color(red: 243/255, green: 240/255, blue: 240/255))
                            .frame(height: 3)
                            
                    }
                }
                .padding([.leading, .trailing])
                .frame(width: 250)
                Spacer()
            }
            .padding(.top, -30)
        }
    }

struct UserguideView_Previews: PreviewProvider {
    static var previews: some View {
        UserguideView()
    }
}
