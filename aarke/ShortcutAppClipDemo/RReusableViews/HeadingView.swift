//
//  HeadingView.swift
//  ShortcutAppClipDemo
//
//  Created by Asle Kinnerød on 22/11/2022.
//

import SwiftUI

struct HeadingView: View {
    @Environment(\.presentationMode) var presentation
    
    var title: String

    var body: some View {
        HStack{
            Spacer()
            
            Text(title)
                .font(.custom("Avenir Black", size: 25))
                .fontWeight(.bold)
                .foregroundColor(.darkGray)
                .padding(.leading, -15)
            Spacer()
        }
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(title: "RESERVEDELER")
    }
}
