import SwiftUI

struct CustomTextFieldView: View {
    let brand: Brand
    let placeholderText: String
    @Binding var text: String

    var body: some View {
        ZStack(alignment: .leading) {
            TextField("", text: $text)
                .padding()
                .frame(height: 56)
                .background(brand.info.secondaryColor)
                .clipShape(RoundedRectangle(cornerRadius: 6))
                .textContentType(.name)
                .disableAutocorrection(true)
                .submitLabel(.done)

            if text.isEmpty {
                Text(placeholderText)
                    .padding()
            }
        }
        .font(.custom("Helvetica Neue", size: 15))
        .fontWeight(.semibold)
    }
}

#Preview {
    CustomTextFieldView(
        brand: .aarke,
        placeholderText: "Placeholder",
        text: .constant("This is some text")
    )
}
