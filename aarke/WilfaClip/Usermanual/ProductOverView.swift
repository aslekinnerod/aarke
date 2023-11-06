//
//  ProductOverView.swift
//  WilfaClip
//
//  Created by Asle Kinnerød on 23/11/2022.
//

import SwiftUI

struct ProductOverView: View {
    var body: some View {
        VStack{
            DetailHeaderView(title: "Förpackningens innehåll")
           
                 Image("Component 1")
                .resizable()
                .scaledToFit()
                .padding()
            
            Spacer()
            }
            .frame(width: UIScreen.main.bounds.width)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
           
      
    }
}

struct ProductOverView_Previews: PreviewProvider {
    static var previews: some View {
        ProductOverView()
    }
}
