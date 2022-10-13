//
//  SpareParts.swift
//  WilfaClip
//
//  Created by Asle Kinnerød on 22/11/2022.
//

import SwiftUI

struct SpareParts: View {

    let products: [Product] = [
        Product(imageName: "kanne", title: "PERFORMANCE KANNE MED LOKK", detail: "Reservedel WSPL-3B", price: "399,-"),
        Product(imageName: "lokk2", title: "PERFORMANCE LOKK VANNTANK", detail: "Reservedel WSPL-3B", price: "199,-"),
        Product(imageName: "lokk", title: "PERFORMANCE KANNE TIL FILTERHOLDER", detail: "Reservedel WSPL-3B", price: "199,-"),
        Product(imageName: "lokk", title: "PERFORMANCE KANNE TIL FILTERHOLDER", detail: "Reservedel WSPL-3B", price: "199,-"),
        Product(imageName: "filter", title: "PERFORMANCE FILTERHOLDER MED LOKK", detail: "Reservedel WSPL-3B", price: "299,-")
    ]


    var body: some View {
        VStack{
            TopBanner()
                .padding(.bottom, -50)
        HeadingView(title: "RESERVEDELER")

            ScrollView(.vertical, showsIndicators: false){
                ForEach (0..<2) {i in
                    HStack{
                        ForEach (0..<2) { j in
                            let index = i + j + (i*2)
                            SparePartsView(imageName: products[index].imageName, title: products[index].title, detail: products[index].detail, price: products[index].price)
                        }
                    }.padding(0)
                }
            }
        }
    }
}

struct SpareParts_Previews: PreviewProvider {
    static var previews: some View {
        SpareParts()
    }
}
