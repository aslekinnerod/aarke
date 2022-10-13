//
//  CleaningView.swift
//  WilfaClip
//
//  Created by Asle Kinnerød on 23/11/2022.
//

import SwiftUI

struct CleaningView: View {
    var body: some View {
        VStack{
            DetailHeaderView(title: "Rengjøring og vedlikehold")
           
                 Image("cleaning")
                        .resizable()
        
                .padding(.all, 20)
            }
            .frame(width: UIScreen.main.bounds.width)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            Spacer()
    }
}

struct CleaningView_Previews: PreviewProvider {
    static var previews: some View {
        CleaningView()
    }
}
