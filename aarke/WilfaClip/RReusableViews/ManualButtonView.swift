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
                .foregroundColor(.darkGray)
                .cornerRadius(5)
                
               
            
            Text(title)
                .foregroundColor(.white)
                .font(.custom("Helvetica Neue", size: 18))
                .fontWeight(.bold)
            
        }
    }
}

struct ManualButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ManualButtonView(title: "Produktoversikt")
    }
}
