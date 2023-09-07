//
//  LanguageView.swift
//  WilfaClip
//
//  Created by Asle Kinnerød on 24/11/2022.
//

import SwiftUI

struct LanguageView: View {
    
   
    var body: some View {
        VStack{
            Text("Velg språk:")
                .font(.custom("HelveticaNeue", size: 24))
                .fontWeight(.bold)
                .padding(.bottom)
            
            ZStack{
                Rectangle()
                    .frame(width: 354, height: 56)
                    .foregroundColor(Color.lightGray)
                    .cornerRadius(5)
                Text("Svenska ")
                    .font(.custom("Helvetica neue", size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(.darkGray)
                +
                Text(Image(systemName: "checkmark"))
                    .foregroundColor(.darkGray)
                    .font(.custom("Helvetica neue", size: 15))
                    .fontWeight(.bold)

            }
            ZStack{
                Rectangle()
                    .frame(width: 354, height: 56)
                    .foregroundColor(Color.lightGray)
                    .cornerRadius(5)
                Text("Finska")
                    .font(.custom("Helvetica neue", size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(.darkGray)
            }
            ZStack{
                Rectangle()
                    .frame(width: 354, height: 56)
                    .foregroundColor(Color.lightGray)
                    .cornerRadius(5)
                Text("Danska")
                    .font(.custom("Helvetica neue", size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(.darkGray)
            }
            ZStack{
                Rectangle()
                    .frame(width: 354, height: 56)
                    .foregroundColor(Color.lightGray)
                    .cornerRadius(5)
                Text("Norska")
                    .font(.custom("Helvetica neue", size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(.darkGray)
            }
            ZStack{
                Rectangle()
                    .frame(width: 354, height: 56)
                    .foregroundColor(Color.lightGray)
                    .cornerRadius(5)
                Text("Tyska")
                    .font(.custom("Helvetica neue", size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(.darkGray)
            }
            ZStack{
                Rectangle()
                    .frame(width: 354, height: 56)
                    .foregroundColor(Color.lightGray)
                    .cornerRadius(5)
                Text("Engelska")
                    .font(.custom("Helvetica neue", size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(.darkGray)
            }
            ZStack{
                Rectangle()
                    .frame(width: 354, height: 56)
                    .foregroundColor(Color.lightGray)
                    .cornerRadius(5)
                Text("Spanska")
                    .font(.custom("Helvetica neue", size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(.darkGray)
            }
            ZStack{
                Rectangle()
                    .frame(width: 354, height: 56)
                    .foregroundColor(Color.lightGray)
                    .cornerRadius(5)
                Text("Islandska")
                    .font(.custom("Helvetica neue", size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(.darkGray)
            }
            
        }
    }
}

struct LanguageView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageView()
    }
}


