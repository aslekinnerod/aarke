//
//  LanguageView.swift
//  ShortcutAppClipDemo
//
//  Created by Asle Kinnerød on 24/11/2022.
//

import SwiftUI

struct LanguageView: View {
    let brand: Brand

    var body: some View {
        VStack {
            Text("Velg språk:")
                .font(.custom("Avenir Heavy", size: 24))
                .fontWeight(.bold)
                .padding(.bottom)

            ZStack{
                RectangleView()
                HStack {
                    Text("Svenska")
                    Text(Image(systemName: "checkmark"))
                }
            }

            ForEach(brand.info.additionalLanguages, id: \.self) { language in
                ZStack{
                    RectangleView()
                    Text(language)
                }
            }
        }
        .font(.custom("Avenir Heavy", size: 18))
        .fontWeight(.bold)
        .foregroundColor(.darkGray)
    }
}

struct RectangleView: View {
    var body: some View {
        Rectangle()
            .frame(width: 354, height: 56)
            .foregroundColor(Color.lightGray)
            .cornerRadius(5)
    }
}

struct LanguageView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageView(brand: .shortcut)
    }
}

