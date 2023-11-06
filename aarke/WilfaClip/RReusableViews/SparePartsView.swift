//
//  SparePartsView.swift
//  WilfaClip
//
//  Created by Asle Kinnerød on 22/11/2022.
//

import SwiftUI

struct SparePartsView: View {

    var imageName: String
    var title: String
    var detail: String
    var price: String


    var body: some View {
        ZStack{
            Rectangle()
                .cornerRadius(5)
                .foregroundColor(.white)
                .overlay(
                      RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.darkGray, lineWidth: 1)
                  )
            VStack{
                Image(imageName)
                    .resizable()
                    .frame(width: 100, height: 100)
                VStack(alignment: .leading){
                    Text(title)
                        .font(.custom("Avenir Heavy", size: 16))
                        .padding([.leading, .trailing])
                        .padding(.bottom, 0.3)
                    Text(detail)
                        .font(.custom("Avenir Heavy", size: 12))
                        .padding([.leading, .trailing, .bottom])
                    HStack{
                        Circle()
                            .frame(width: 12, height: 12)
                            .foregroundColor(Color(red: 51/255, green: 94/255, blue: 68/255))
                        Text("På lager")
                            .font(.custom("Avenir Heavy", size: 12))

                    }
                    .padding([.leading, .trailing])
                    Text(price)
                        .font(.custom("Helvetica_Neue", size: 12))
                        .padding([.leading, .trailing])
                }
            }

        }
        .frame(width: 160, height: 280)
        .navigationBarBackButtonHidden(true)
        .padding(7)

    }
}

struct SparePartsView_Previews: PreviewProvider {
    static var previews: some View {
        SparePartsView(imageName: "putsduk" , title: "PERFORMANCE KANNE MED LOKK", detail: "Reservedel WSPL-3B", price: "399,-")
    }
}

struct Product {
    let imageName: String
    let title: String
    let detail: String
    let price: String
}
