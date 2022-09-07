//
//  Palette+Color.swift
//  Financial App
//
//  Created by Craig Clayton on 11/20/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI
import Foundation

extension Color {
    static let baseDarkGray = Color("DarkGray")
    static let basePrussianBlue = Color("PrussianBlue")
    static let baseRed = Color("Red")
    static let baseRedLight = Color("RedLight")
    static let baseGreen = Color("JungleGreen")
    static let baseLightGreen = Color("JungleLightGreen")

    // Add from here
    static let basePurpleTop = Color("purple-top")
    static let basePurpleBottom = Color("purple-bottom")
    static let basePinkTop = Color("pink-top")
    static let basePinkBottom = Color("pink-bottom")
    static let baseOrangeTop = Color("orange-top")
    static let baseOrangeBottom = Color("orange-bottom")
}

extension UIColor {
    static let baseDarkGray = Color(named: "DarkGray")
    static let basePrussianBlue = Color(named: "PrussianBlue")
    static let baseRed = Color(named: "Red")
    static let baseRedLight = Color(named: "RedLight")
    static let baseGreen = Color(named: "JungleGreen")
    static let baseLightGreen = Color(named: "JungleLightGreen")

    // Add from here
    static let basePurpleTop = Color(named: "purple-top")
    static let basePurpleBottom = Color(named: "purple-bottom")
    static let basePinkTop = Color(named: "pink-top")
    static let basePinkBottom = Color(named: "pink-bottom")
    static let baseOrangeTop = Color(named: "orange-top")
    static let baseOrangeBottom = Color(named: "orange-bottom")

    private static func Color(named key: String) -> UIColor {
       if let color = UIColor(named: key, in: .main, compatibleWith: nil) {
           return color
       }

       return .black
    }
}
