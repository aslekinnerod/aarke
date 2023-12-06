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
            HeaderView(brand: brand)
            HeadingView(
                brand: brand,
                title: brand.info.customerFeedbackHeaderText
            )

            ZStack{
                VStack(spacing: 24) {
                    HStack {
                        RatingView(rating: $rating)
                        Spacer()
                    }

                    VStack(spacing: 14) {
                        CustomTextFieldView(
                            brand: brand,
                            placeholderText: brand.info.customerFeedbackNameTextFieldPlaceholder,
                            text: $name
                        )

                        CustomTextEditorView(
                            brand: brand,
                            placeholderText: brand.info.customerFeedbackTextEditorTitleText,
                            text: $description
                        )
                    }

                    CustomButtonView(brand: brand, buttonLabel: brand.info.customerFeedbackSubmitButtonText) {
                            didTapSend = true
                        }
                }
                .padding()
            }
        }
        .navigationBarBackButtonHidden(true)
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

