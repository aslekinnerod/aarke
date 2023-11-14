//
//  CustomerFeedBackView.swift
//  ShortcutAppClipDemo
//
//  Created by Asle Kinnerød on 23/11/2022.
//

import SwiftUI

struct CustomerFeedBackView: View {
    let brand: Brand

    @State private var rating = 0
    @State private var name = ""
    @State private var description = ""
    @State private var didTapSend = false
    @State private var didTap = false

    var body: some View {
        ScrollView {
            TopBanner(brand: brand)
            HeadingView(title: brand.info.customerFeedbackHeaderText)

            ZStack{
                VStack(spacing: 24) {
                    HStack {
                        RatingView(rating: $rating)
                        Spacer()
                    }

                    TextField(brand.info.customerFeedbackNameTextFieldPlaceholder, text: $name)
                        .padding()
                        .frame(height: 50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color(.lightGray), lineWidth: 2)
                        )
                        .padding(.top, 24)
                        .textContentType(.name)
                        .textInputAutocapitalization(.words)
                        .disableAutocorrection(true)
                        .submitLabel(.done)

                    VStack() {
                        HStack {
                            Text(brand.info.customerFeedbackTextEditorTitleText)
                                .font(.custom("Helvetica Neue", size: 15))
                                .fontWeight(.bold)
                                .foregroundColor(.placeholderGray)
                            Spacer()
                        }

                        TextEditor(text: $description)
                            .frame(height: 200)
                            .padding(.horizontal)
                            .padding(.top)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(.lightGray), lineWidth: 2)
                            )
                            .textContentType(.name)
                            .multilineTextAlignment(.leading)
                            .lineLimit(0)
                            .submitLabel(.done)
                    }
                    .padding(.top)


                    Button(action: {
                        didTapSend = true
                    }) {
                        Text(brand.info.customerFeedbackSubmitButtonText)
                            .frame(maxWidth: .infinity)
                            .font(.custom("Helveticaneue", size: 15))
                            .fontWeight(.bold)
                            .foregroundColor(.darkGray)
                            .padding(8)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color.lightGray)
                    .padding(.top, 30)
                    Spacer()
                }
                .padding()
            }
        }
        .ignoresSafeArea(.all)
        .alert(isPresented: $didTapSend) {
            Alert(
                title: Text(brand.info.customerFeedbackAlertTitle),
                message: Text(brand.info.customerFeedbackAlertMessage),
                dismissButton: .default(Text("Ok"), action: {
                    withAnimation {
                        name = ""
                        description = ""
                        rating = 0
                    }
                }))
        }
    }
}

struct CustomerFeedBackView_Previews: PreviewProvider {
    static var previews: some View {
        CustomerFeedBackView(brand: .shortcut)
    }
}

