//
//  ManualButtonView.swift
//  ShortcutAppClipDemo
//
//  Created by Asle Kinnerød on 23/11/2022.
//

import SwiftUI

struct ManualButtonView: View {
    let brand: Brand
    var title: String
    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 311, height: 75)
                .foregroundColor(brand.info.secondaryColor)
                .cornerRadius(5)
                
               
            
            Text(title)
                .foregroundColor(brand.info.textColor)
                .font(.custom("Avenir Heavy", size: 20))
                .fontWeight(.bold)
        }
    }
}

struct ManualButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ManualButtonView(brand: .aarke, title: "Produktöversikt")
    }
}
