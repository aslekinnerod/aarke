//
//  SpareParts.swift
//  ShortcutAppClipDemo
//
//  Created by Asle Kinnerød on 22/11/2022.
//

import SwiftUI

struct SpareParts: View {
    let brand: Brand

    let products: [Product] = [
        Product(imageName: "putsduk", title: "POLERDUK", detail: "Reservedel WSPL-3B", price: "99,-"),
        Product(imageName: "dropbricka", title: "DROPPFATS-GALLER", detail: "Reservedel WSPL-3B", price: "139,-"),
        Product(imageName: "kork", title: "STÅLKORK TIL PET-FLASKE", detail: "Reservedel WSPL-3B", price: "199,-"),
        Product(imageName: "t_ringar", title: "GUMMI PACKNING", detail: "Reservedel WSPL-3B", price: "99,-"),
        Product(imageName: "kork", title: "STÅLKORK TILL PET-FLASKE", detail: "Reservedel WSPL-3B", price: "99,-")
    ]


    var body: some View {
        VStack{
            TopBanner(brand: brand)
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
        SpareParts(brand: .shortcut)
    }
}
