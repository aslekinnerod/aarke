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
                Text("Norsk ")
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
                Text("Finsk")
                    .font(.custom("Helvetica neue", size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(.darkGray)
            }
            ZStack{
                Rectangle()
                    .frame(width: 354, height: 56)
                    .foregroundColor(Color.lightGray)
                    .cornerRadius(5)
                Text("Dansk")
                    .font(.custom("Helvetica neue", size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(.darkGray)
            }
            ZStack{
                Rectangle()
                    .frame(width: 354, height: 56)
                    .foregroundColor(Color.lightGray)
                    .cornerRadius(5)
                Text("Svensk")
                    .font(.custom("Helvetica neue", size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(.darkGray)
            }
            ZStack{
                Rectangle()
                    .frame(width: 354, height: 56)
                    .foregroundColor(Color.lightGray)
                    .cornerRadius(5)
                Text("Tysk")
                    .font(.custom("Helvetica neue", size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(.darkGray)
            }
            ZStack{
                Rectangle()
                    .frame(width: 354, height: 56)
                    .foregroundColor(Color.lightGray)
                    .cornerRadius(5)
                Text("Engelsk")
                    .font(.custom("Helvetica neue", size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(.darkGray)
            }
            ZStack{
                Rectangle()
                    .frame(width: 354, height: 56)
                    .foregroundColor(Color.lightGray)
                    .cornerRadius(5)
                Text("Spansk")
                    .font(.custom("Helvetica neue", size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(.darkGray)
            }
            ZStack{
                Rectangle()
                    .frame(width: 354, height: 56)
                    .foregroundColor(Color.lightGray)
                    .cornerRadius(5)
                Text("Islandsk")
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


