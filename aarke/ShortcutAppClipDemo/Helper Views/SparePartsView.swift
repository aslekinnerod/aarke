//
//  SparePartsView.swift
//  ShortcutAppClipDemo
//
//  Created by Asle Kinnerød on 22/11/2022.
//

import SwiftUI

struct SparePartView: View {
    let subProduct: SubProduct
//    var image: Image
//    var title: String
//    var detail: String
//    var price: String


    var body: some View {
        ZStack {
            Rectangle()
                .cornerRadius(5)
                .foregroundColor(.white)
                .overlay(
                      RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.darkGray, lineWidth: 1)
                  )
            VStack {
                subProduct.image
                    .resizable()
                    .frame(width: 100, height: 100)
                VStack(alignment: .leading){
                    Text(subProduct.title)
                        .font(.custom("Avenir Heavy", size: 16))
                        .padding([.leading, .trailing])
                        .padding(.bottom, 0.3)
                    Text(subProduct.detail)
                        .font(.custom("Avenir Heavy", size: 12))
                        .padding([.leading, .trailing, .bottom])
                    HStack {
                        Circle()
                            .frame(width: 12, height: 12)
                            .foregroundColor(Color(red: 51/255, green: 94/255, blue: 68/255))
                        Text("På lager")
                            .font(.custom("Avenir Heavy", size: 12))

                    }
                    .padding([.leading, .trailing])
                    Text(subProduct.price)
                        .font(.custom("Helvetica_Neue", size: 12))
                        .padding([.leading, .trailing])
                }
            }

        }
        .frame(width: 160, height: 280)
//        .navigationBarBackButtonHidden(true)
        .padding(7)

    }
}

struct SparePartsView_Previews: PreviewProvider {
    static var previews: some View {
        SparePartView(subProduct: SubProduct(image: Image(systemName: "person"), title: "PERFORMANCE KANNE MED LOKK", detail: "Reservedel WSPL-3B", price: "399,-"))
    }
}