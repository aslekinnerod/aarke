//
//  ProductInformationView.swift
//  WilfaClip
//
//  Created by Asle Kinnerød on 24/11/2022.
//

import SwiftUI

struct ProductInformationView: View {
    var body: some View {
        VStack{
            TopBanner()
                .padding(.bottom, -55)
                .offset(x: -12)
            HeadingView(title: "PRODUKTINFORMATION")
                .padding(.bottom)
            VStack(alignment: .leading){
                Text("CARBONATOR 3")
                    .font(.custom("Helvetica Neue", size: 18))
                    .fontWeight(.bold)
                    .foregroundColor(.darkGray)
                    .padding(.bottom, 5)
                
                Text("Carbonator 3 is a premium sparkling water maker in stainless steel. It’s built to last and comes in several.....")
                    .font(.custom("Helvetica Neue", size: 15))
                    .foregroundColor(.textGray)
                    .padding(.trailing, 30)
            }
            .padding(.leading, 60)
            .padding(.trailing, 60)
            .padding(.bottom)
            
            VStack(alignment: .leading){
                Text("Best i test")
                    .font(.custom("Helvetica Neue", size: 18))
                    .fontWeight(.bold)
                    .foregroundColor(.darkGray)
                    .padding(.bottom, 5)
                Text("Aarke Carbonator 3 is built to last. With an obsession for detail and hones....")
                    .font(.custom("Helvetica Neue", size: 15))
                    .foregroundColor(.textGray)
            }
            .padding(.leading, 60)
            .padding(.trailing, 60)
            
            
            VideoView()
                .padding(40)
                .navigationBarBackButtonHidden(true)
            
        }
    }
}

struct ProductInformationView_Previews: PreviewProvider {
    static var previews: some View {
        ProductInformationView()
    }
}
