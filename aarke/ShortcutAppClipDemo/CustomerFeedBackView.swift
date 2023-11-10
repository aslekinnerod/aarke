//
//  CustomerFeedBackView.swift
//  ShortcutAppClipDemo
//
//  Created by Asle Kinnerød on 23/11/2022.
//

import SwiftUI

struct CustomerFeedBackView: View {
    @State var rating = 0
    @State var name = ""
    @State var omtale = ""
    @State var send: Bool = false
    @State private var didTap:Bool = false
    
    var body: some View {
        VStack{
            TopBanner(brand: .shortcut)
                .padding(.bottom, -60)
            HeadingView(title: "RECENSIONER")
                
            ZStack{
                Text("Takk for din tilbakemelding!")
                    .font(.custom("Helvetica Neue", size: 26))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 52/255, green: 82/255, blue: 86/255))
                
                VStack{
                    HStack{
                        RatingView(rating: $rating)
                            .padding(.leading, 40)
                            .padding([.top, .bottom])
                        Spacer()
                    }
                    ZStack(alignment: .leading){
                        Rectangle()
                            .frame(width: 354, height: 56)
                            .foregroundColor(.lightGray)
                            .shadow(radius: 1)
                            .padding(.leading, 38)
                        if name.isEmpty{
                            Text("NAMN")
                                .padding(.leading, 45)
                                .font(.custom("Helvetica Neue", size: 15))
                                .fontWeight(.bold)
                                .foregroundColor(.placeholderGray)
                        }
                        TextField("", text: $name)
                            .padding(.leading, 45)
                            .font(.custom("Helvetica Neue", size: 15))
                            .fontWeight(.bold)
                            .foregroundColor(.darkGray)
                            .textContentType(.name)
                    }
                    .padding(.bottom, 10)
                    ZStack(alignment: .leading){
                        Rectangle()
                            .frame(width: 354, height: 251)
                            .foregroundColor(.lightGray)
                            .shadow(radius: 1)
                            .padding(.leading, 38)
                        if omtale.isEmpty{
                            Text("BESKRIV")
                                .padding(.leading, 45)
                                .font(.custom("Helvetica Neue", size: 15))
                                .fontWeight(.bold)
                                .foregroundColor(.placeholderGray)
                                .offset(y: -100)
                        }
                        TextField("", text: $omtale)
                            .padding(.leading, 45)
                            .font(.custom("Helvetica Neue", size: 15))
                            .fontWeight(.bold)
                            .offset(y: -100)
                    }
                    Button(action: {
                        send.toggle()
                    }) {
                        Text("SKICKA")
                            .frame(width: 354, height: 53)
                            .font(.custom("Helveticaneue", size: 15))
                            .fontWeight(.bold)
                            .foregroundColor(.darkGray)
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.white, lineWidth: 1)
                            )
                    }
                    .background(Color.lightGray)
                    .cornerRadius(25)
                    .padding(.top, 30)
                Spacer()
                }
                .opacity(send ? 0 : 1)
            }
//            .navigationBarBackButtonHidden(true)
        }
    }
}

struct CustomerFeedBackView_Previews: PreviewProvider {
    static var previews: some View {
        CustomerFeedBackView()
    }
}

