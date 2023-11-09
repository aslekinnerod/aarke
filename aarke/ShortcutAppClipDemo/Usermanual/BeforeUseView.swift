//
//  BeforeUseView.swift
//  ShortcutAppClipDemo
//
//  Created by Asle Kinnerød on 23/11/2022.
//

import SwiftUI

struct BeforeUseView: View {
    var body: some View {
        VStack{
            DetailHeaderView(title: "Produktens komponenter")
           
                 Image("Component 3")
                        .resizable()
        
                .padding(.all, 10)
            }
            .frame(width: UIScreen.main.bounds.width)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            Spacer()
        }
}

struct BeforeUseView_Previews: PreviewProvider {
    static var previews: some View {
        BeforeUseView()
    }
}
