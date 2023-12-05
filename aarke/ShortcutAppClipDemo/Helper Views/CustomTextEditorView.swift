import SwiftUI

struct CustomTextEditorView: View {
    let placeholderText: String
    @Binding var text: String


    var body: some View {
        ZStack(alignment: .topLeading) {
            TextEditor(text: $text)
                .frame(height: 200)
                .padding(10)
                .scrollContentBackground(.hidden)
                .background(Color(.systemGray5))
                .clipShape(RoundedRectangle(cornerRadius: 6))
                .textContentType(.name)
                .multilineTextAlignment(.leading)
                .lineLimit(0)
                .submitLabel(.done)

            if text.isEmpty {
                Text(placeholderText)
                    .padding()
                    .padding(.top, 1)
            }
        }
        .font(.custom("Helvetica Neue", size: 15))
        .fontWeight(.semibold)
    }
}

#Preview {
    CustomTextEditorView(
        placeholderText: "Placeholder Text",
        text: .constant("Text")
    )
}
