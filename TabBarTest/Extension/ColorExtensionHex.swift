//
//  ColorExtensionHex.swift
//  TabBarTest
//
//  Created by Life on 2/1/23.
//

import UIKit


extension UIColor {
    
    convenience init(red: Int, green: Int, blue: Int, alpha: CGFloat = 1.0) {
        self.init(
            
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            alpha: alpha
        )
    }

    convenience init(hexString: String, alpha: CGFloat = 1.0) {
        
        var charString:String = hexString.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

          if (charString.hasPrefix("#")) {
              charString.remove(at: charString.startIndex)
          }

          var rgb:UInt64 = 0
          Scanner(string: charString).scanHexInt64(&rgb)
        
        self.init(
            red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgb & 0x0000FF) / 255.0,
            alpha: alpha
        )
    }
}

var metalColor =  UIColor(hexString: "#A7B9F6", alpha: 1)
var bgColor =  UIColor(hexString: "#F1F3F8", alpha: 1)


