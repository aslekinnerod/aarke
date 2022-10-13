//
//  UsermanualView.swift
//  WilfaClip
//
//  Created by Asle Kinnerød on 23/11/2022.
//

import SwiftUI

struct UsermanualView: View {
  
    
    var body: some View {
        VStack{
            TopBanner()
                .padding(.bottom, -55)
            HeadingView(title: "BRUKERMANUAL")
                .padding(.bottom, 20)
            NavigationLink(destination: ProductOverView()){
                ManualButtonView(title: "Produktoversikt")
            }
            .navigationTitle("")
            
            NavigationLink(destination: BeforeUseView()){
                ManualButtonView(title: "Før bruk")
            }
            .navigationTitle("")
            
            NavigationLink(destination: UserguideView()){
                ManualButtonView(title: "Bruk")
            }
            .navigationTitle("")
            
            NavigationLink(destination: CleaningView()){
                ManualButtonView(title: "Rengjøring og vedlikehold")
            }
            .navigationTitle("")
            
            NavigationLink(destination: ProblemSolvingView()){
                ManualButtonView(title: "Problemløsing")
            }
            .navigationTitle("")
            Spacer()
                .navigationBarBackButtonHidden(true)
            
        }
    }
}

struct UsermanualView_Previews: PreviewProvider {
    static var previews: some View {
        UsermanualView()
    }
}
