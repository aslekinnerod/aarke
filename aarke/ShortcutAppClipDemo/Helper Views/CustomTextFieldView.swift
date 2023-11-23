//
//  CustomTextFieldView.swift
//  ShortcutDemoClip
//
//  Created by Eric Davis on 15/11/2023.
//

import SwiftUI

struct CustomTextFieldView: View {
    let placeholderText: String
    @Binding var text: String

    var body: some View {
        TextField(placeholderText, text: $text)
            .padding()
            .frame(height: 50)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color(.lightGray), lineWidth: 2)
            )
            .textContentType(.name)
            .textInputAutocapitalization(.words)
            .disableAutocorrection(true)
            .submitLabel(.done)
    }
}

#Preview {
    CustomTextFieldView(
        placeholderText: "Placeholder",
        text: .constant("some text")
    )
}
