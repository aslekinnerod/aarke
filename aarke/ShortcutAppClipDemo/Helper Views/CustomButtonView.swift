//
//  CustomButtonView.swift
//  ShortcutDemoClip
//
//  Created by Eric Davis on 04/12/2023.
//

import SwiftUI

struct CustomButtonView: View {
    let brand: Brand
    var buttonLabel: String
    var action: (() -> Void)

    var body: some View {
        Button(action: action) {
            Text(buttonLabel)
                .frame(maxWidth: .infinity)
                .font(.custom("Helveticaneue", size: 15))
                .fontWeight(.bold)
                .foregroundColor(brand.info.buttonTextColor)
                .padding(8)
        }
        .buttonStyle(.borderedProminent)
        .clipShape(Capsule())
        .tint(brand.info.primaryColor)
        .background(Color.clear)
    }
}

#Preview {
    CustomButtonView(brand: .aarke, buttonLabel: "Label") {
        print("Hello")
    }
}
