//
//  ContentView.swift
//  HHDemoClip
//
//  Created by Asle Kinnerød on 20/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {


        NavigationView{
            ZStack(alignment: .center){
                Image("varde")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)

                VStack{
                    Image("logo")
                    ListView()
                        .scrollContentBackground(.hidden)
                        .offset(y:120)
                }
                .scrollContentBackground(.hidden)
                .offset(y:50)
            } .scrollContentBackground(.hidden)
                .background(Color.clear)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

