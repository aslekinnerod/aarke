//
//  UserguideView.swift
//  WilfaClip
//
//  Created by Asle Kinnerød on 23/11/2022.
//

import SwiftUI

struct UserguideView: View {
    var body: some View {

            
            TabView {
                ForEach(0..<3) { i in
                    ZStack {
                        Color.black
                        Text("Row: \(i)").foregroundColor(.white)
                    }.clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                }
                .padding(.all, 10)
            }
            .frame(width: UIScreen.main.bounds.width, height: 200)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        
    }
}

struct UserguideView_Previews: PreviewProvider {
    static var previews: some View {
        UserguideView()
    }
}
