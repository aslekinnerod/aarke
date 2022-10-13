//
//  ListItemRow.swift
//  HHDemoClip
//
//  Created by Asle Kinnerød on 21/10/2022.
//

import SwiftUI

struct ListItemRow: View {
    let width = UIScreen.screenWidth - 100
    let height: CGFloat = 59
    let alpha: CGFloat

    let place: String



    var body: some View {
        let color = CGColor(srgbRed: 212/255, green: 18/255, blue: 23/255, alpha: alpha)
        
        ZStack(alignment: .leading){
            Rectangle()
                .foregroundColor(Color(cgColor: color))
                .frame(width: width, height: height)
                .cornerRadius(5)

            Text(place)
                .font(.system(size: 24, weight: .bold, design: .default))
                .fontWeight(.medium)
                .foregroundColor(.white)
                .offset(x: 20)
                Image("hiker")
                .alignmentGuide(.leading) { _ in
                    -250
                }
        }
    }
}

struct ListItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ListItemRow(alpha: 0.5, place: "Vettakollen")

    }

                    
}

extension UIScreen{
static let screenWidth = UIScreen.main.bounds.size.width
static let screenHeight = UIScreen.main.bounds.size.height
static let screenSize = UIScreen.main.bounds.size
                }
