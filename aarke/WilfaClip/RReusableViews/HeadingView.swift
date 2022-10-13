//
//  HeadingView.swift
//  WilfaClip
//
//  Created by Asle Kinnerød on 22/11/2022.
//

import SwiftUI

struct HeadingView: View {
    @Environment(\.presentationMode) var presentation
    
    var title: String

    var body: some View {
        
        HStack{
            Button {
                presentation.wrappedValue.dismiss()
            } label: {
                Text(Image(systemName: "chevron.left")
                    .renderingMode(.original)

                )
                    .fontWeight(.medium)
                    .foregroundColor(.darkGray)
                    .font(.system(size: 26))
                    .padding(.leading, 10)


            }




            Spacer()
            Text(title)
                .font(.custom("Helvetica Neue", size: 25))
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
