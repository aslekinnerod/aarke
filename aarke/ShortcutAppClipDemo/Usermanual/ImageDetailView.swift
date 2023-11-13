//
//  ProductOverView.swift
//  ShortcutAppClipDemo
//
//  Created by Asle Kinnerød on 23/11/2022.
//

import SwiftUI

struct ImageDetailView: View {
    let title: String
    let image: Image

    var body: some View {
        VStack{
            DetailHeaderView(title: title)
            image
                .resizable()
                .scaledToFit()
                .padding()

            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

struct ProductOverView_Previews: PreviewProvider {
    static var previews: some View {
        ImageDetailView(title: "Title", image: Image(systemName: "person"))
    }
}
