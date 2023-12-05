//
//  UsermanualView.swift
//  ShortcutAppClipDemo
//
//  Created by Asle Kinnerød on 23/11/2022.
//

import SwiftUI

struct UsermanualView: View {
    let brand: Brand

    var body: some View {
        ScrollView { 
            VStack {
                HeaderView(brand: brand)
                HeadingView(title: brand.info.userManualTitleText)
                    .padding(.bottom, 20)

                NavigationLink(destination: ImageDetailView(
                    title: brand.info.userManualProductOverviewHeaderText,
                    image: brand.info.userManualProductOverviewImage)) {
                        ManualButtonView(title: brand.info.userManualProductOverviewHeaderText)
                    }
                    .navigationTitle("")

                NavigationLink(destination: ImageDetailView(
                    title: brand.info.userManualProductComponentHeaderText,
                    image: brand.info.userManualProductComponentImage)) {
                        ManualButtonView(title: brand.info.userManualProductComponentHeaderText)
                    }
                    .navigationTitle("")

                NavigationLink(destination: ImageDetailView(
                    title: brand.info.userManualUserGuideViewHeaderText,
                    image: brand.info.userManualUserGuideImage)) {
                        ManualButtonView(title: brand.info.userManualUserGuideViewHeaderText)
                    }
                    .navigationTitle("")

                NavigationLink(destination: ImageDetailView(
                    title: brand.info.userManualCleaningViewHeaderText,
                    image: brand.info.userManualCleaningImage)) {
                        ManualButtonView(title: brand.info.userManualCleaningViewHeaderText)
                    }
                    .navigationTitle("")
                Spacer()
            }
        }
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea(.all)
    }
}

struct UsermanualView_Previews: PreviewProvider {
    static var previews: some View {
        UsermanualView(brand: .shortcut)
    }
}
