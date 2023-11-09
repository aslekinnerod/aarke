//
//  SpecsView.swift
//  WilfaClip
//
//  Created by Asle Kinnerød on 23/11/2022.
//

import SwiftUI

struct SpecsView: View {
    var body: some View {
        VStack{
            TopBanner()
                .padding(.bottom, -60)
            HeadingView(title: "SPECIFIKATIONER")
            Image("specs")
                .resizable()
                .scaledToFit()
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct SpecsView_Previews: PreviewProvider {
    static var previews: some View {
        SpecsView()
    }
}
