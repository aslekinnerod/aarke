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
        ZStack(alignment: .leading) {
            HStack {
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
            }

            HStack {
                Spacer()
                Text(title)
                    .font(.custom("Avenir Black", size: 25))
                    .fontWeight(.bold)
                    .foregroundColor(.darkGray)
                Spacer()
            }
        }
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(title: "RESERVEDELER")
    }
}
