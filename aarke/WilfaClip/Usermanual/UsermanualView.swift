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
            HeadingView(title: "BRUKSANVISNING")
                .padding(.bottom, 20)
            NavigationLink(destination: ProductOverView()){
                ManualButtonView(title: "Produktöversikt")
            }
            .navigationTitle("")
            
            NavigationLink(destination: BeforeUseView()){
                ManualButtonView(title: "Innan användning")
            }
            .navigationTitle("")
            
            NavigationLink(destination: UserguideView()){
                ManualButtonView(title: "Användning")
            }
            .navigationTitle("")
            
            NavigationLink(destination: CleaningView()){
                ManualButtonView(title: "Rengöring och underhold")
            }
            .navigationTitle("")
            
            NavigationLink(destination: ProblemSolvingView()){
                ManualButtonView(title: "Problemlösing")
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
