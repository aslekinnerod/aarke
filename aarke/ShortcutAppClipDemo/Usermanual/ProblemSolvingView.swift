//
//  ProblemSolvingView.swift
//  ShortcutAppClipDemo
//
//  Created by Asle Kinnerød on 23/11/2022.
//

import SwiftUI

struct ProblemSolvingView: View {
    var body: some View {
        VStack{
            DetailHeaderView(title: "Problemløsing")
           
                 Image("problems")
                        .resizable()
        
                .padding(.all, 20)
            }
            .frame(width: UIScreen.main.bounds.width)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            Spacer()
    }
}

struct ProblemSolvingView_Previews: PreviewProvider {
    static var previews: some View {
        ProblemSolvingView()
    }
}
