//
//  DetailHeaderView.swift
//  WilfaClip
//
//  Created by Asle Kinnerød on 23/11/2022.
//

import SwiftUI

struct DetailHeaderView: View {
    
    var title: String
    
    var body: some View {
        VStack(){
            Image("logo-liten")
                .resizable()
                .frame(width: 50, height: 50)
                .padding(.bottom, 35)
            Text(title)
                .font(.custom("Helvetica Neue", size: 24))
                .fontWeight(.bold)
        }
    }
}

struct DetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DetailHeaderView(title: "Title")
    }
}
