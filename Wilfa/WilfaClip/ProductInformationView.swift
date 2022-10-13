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
            HeadingView(title: "PRODUKT INFORMASJON")
                .padding(.bottom)
            VStack(alignment: .leading){
                Text("PERFORMANCE KAFFETRAKTER")
                    .font(.custom("Helvetica Neue", size: 18))
                    .fontWeight(.bold)
                    .foregroundColor(.darkGray)
                    .padding(.bottom, 5)
                
                Text("Best i test kaffetrakter Performance er ikke bare en ny kaffetrakter - det er kaffetrakteren som er utviklet i Norge. ")
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
                Text("Performance ble best i test hos tek.no sin siste kaffetraktertest.")
                    .font(.custom("Helvetica Neue", size: 15))
                    .foregroundColor(.textGray)
            }
            .padding(.leading, 60)
            .padding(.trailing, 60)
            
            
            VideoView()
                .padding(30)
                .navigationBarBackButtonHidden(true)
            
        }
    }
}

struct ProductInformationView_Previews: PreviewProvider {
    static var previews: some View {
        ProductInformationView()
    }
}
