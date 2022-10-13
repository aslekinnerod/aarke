//
//  ColorExtention.swift
//  WilfaClip
//
//  Created by Asle Kinnerød on 24/11/2022.
//

import SwiftUI

extension Color {
    
    public static var darkGray: Color {
          return Color(UIColor(red: 52/255, green: 72/255, blue: 86/255, alpha: 1.0))
      }
    
    public static var lightGray: Color {
        return Color(UIColor(red: 243/255, green: 240/255, blue: 240/255, alpha: 1.0))
    }
    
    public static var textGray: Color {
        return Color(UIColor(red: 77/255, green: 77/255, blue: 77/255, alpha: 1.0))
    }
    
    public static var placeholderGray: Color {
        return Color(UIColor(red: 100/255, green: 115/255, blue: 125/255, alpha: 1.0))
    }
}
