//
//  RegisterView.swift
//  WilfaClip
//
//  Created by Asle Kinnerød on 22/11/2022.
//

import SwiftUI

struct RegisterView: View {
    @Environment(\.presentationMode) var presentation
    
    @State var name: String = ""
    @State var email: String = ""
    @State var country: String = "Sverige"
    @State var send: Bool = false
    
    var body: some View {
        VStack{
            DetailHeaderView(title: "CARBONATOR 3")
                .font(.custom("Helvetica neue", size: 25))
                .fontWeight(.bold)
                .foregroundColor(.darkGray)
            Image("bilde 1")
                .resizable()
                .scaledToFill()
            VStack{
                Text("Serienummer:")
                    .font(.custom("Helvetica Neue", size: 18))
                    .fontWeight(.medium)
                    .foregroundColor(.darkGray)
                Text("6593794")
                    .font(.custom("Helvetica Neue", size: 16))
                    .fontWeight(.regular)
                    .foregroundColor(.darkGray)
            }
            .padding(.bottom)
            VStack{
                Text("Produkt:")
                    .font(.custom("Helvetica Neue", size: 18))
                    .fontWeight(.medium)
                    .foregroundColor(.darkGray)
                Text("aarke Carbonator 3")
                    .font(.custom("Helvetica Neue", size: 16))
                    .fontWeight(.regular)
                    .foregroundColor(.darkGray)
            }
            .padding(.bottom, 40)
            ZStack{
                Text("Produktet er registrert!")
                    .fontWeight(.bold)
                    .font(.custom("HelveticaNeue", size: 26))
                    .foregroundColor(.darkGray)
                    .opacity(send ? 1 : 0)
                VStack{
                    ZStack(alignment: .leading){
                        Rectangle()
                            .frame(width: 354, height: 56)
                            .foregroundColor(.lightGray)
                            .shadow(radius: 1)
                            .padding(.leading, 38)
                        if name.isEmpty{
                            Text("NAVN")
                                .padding(.leading, 45)
                                .font(.custom("Helvetica Neue", size: 15))
                                .fontWeight(.bold)
                                .textContentType(.name)
                                .foregroundColor(.placeholderGray)
                        }
                        TextField("", text: $name)
                            .padding(.leading, 45)
                            .font(.custom("Helvetica Neue", size: 15))
                            .fontWeight(.bold)
                            .textContentType(.name)
                            .foregroundColor(.darkGray)
                    }
                    .padding(.bottom, 14)
                    ZStack(alignment: .leading){
                        Rectangle()
                            .frame(width: 354, height: 56)
                            .foregroundColor(.lightGray)
                            .shadow(radius: 1)
                            .padding(.leading, 38)
                        if email.isEmpty{
                            Text("E-MAIL")
                                .padding(.leading, 45)
                                .font(.custom("Helvetica Neue", size: 15))
                                .fontWeight(.bold)
                                .textContentType(.name)
                                .foregroundColor(.placeholderGray)
                        }
                        TextField("", text: $email)
                            .padding(.leading, 45)
                            .font(.custom("Helvetica Neue", size: 15))
                            .fontWeight(.bold)
                            .textContentType(.emailAddress)
                            .foregroundColor(.darkGray)
                    }
                    .padding(.bottom, 14)
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 354, height: 56)
                            .foregroundColor(.lightGray)
                            .shadow(radius: 1)
                        TextField("Land", text: $country)
                            .padding(.leading, 45)
                            .font(.custom("Helvetica Neue", size: 15))
                            .fontWeight(.bold)
                            .textContentType(.countryName)
                            .foregroundColor(.darkGray)
                    }
                    .padding(.bottom, 25)
                    
                    Button(action: {
                        self.send.toggle()
                    }) {
                        Text("Skicka inn")
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
                    Spacer()
                }
                .opacity(send ? 0 : 1)
                
            }
            .padding(.bottom, 20)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
