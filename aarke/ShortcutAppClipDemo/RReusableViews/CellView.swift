//
//  CellView.swift
//  ShortcutAppClipDemo
//
//  Created by Asle Kinnerød on 21/11/2022.
//

import SwiftUI

struct CellView: View {

    var title: String
    

    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 311, height: 75)
                .foregroundColor(.buttonGray)
                .cornerRadius(5)
                
                Text(title)
                    .font(.custom("Avenir Heavy", size: 18))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
          
        }
        .padding([.trailing, .leading])
        
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(title: "Produktinformation")
    }
}
