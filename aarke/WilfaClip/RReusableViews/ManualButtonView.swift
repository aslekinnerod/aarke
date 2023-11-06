//
//  ManualButtonView.swift
//  WilfaClip
//
//  Created by Asle Kinnerød on 23/11/2022.
//

import SwiftUI

struct ManualButtonView: View {
    
    var title: String
    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 311, height: 75)
                .foregroundColor(.buttonGray)
                .cornerRadius(5)
                
               
            
            Text(title)
                .foregroundColor(.black)
                .font(.custom("Avenir Heavy", size: 20))
                .fontWeight(.bold)
            
        }
    }
}

struct ManualButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ManualButtonView(title: "Produktöversikt")
    }
}
