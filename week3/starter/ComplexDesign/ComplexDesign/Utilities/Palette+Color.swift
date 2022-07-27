import SwiftUI
import Foundation

extension Color {
    static let baseWhite = Color("anti-flash_white")
    static let baseBackground = Color("baseBackground")
    static let baseButton = Color("baseButton")
    static let baseButtonBorder = Color("baseButtonBorder")
    static let baseIndicator = Color("baseIndicator")
    static let baseIndicatorSelected = Color("baseIndicatorSelected")
    static let baseSecondaryBackground = Color("baseSecondaryBackground")
    static let baseText = Color("baseText")
    static let baseSeparatorColor = Color("baseSeparatorColor")
    static let baseAccent = Color("baseAccent") //
    static let baseAccentText = Color("baseAccentText")
}

extension UIColor {
    static let baseWhite = Color("anti-flash_white")
    static let baseBackground = Color("baseBackground")
    static let baseSeparatorColor = Color("baseSeparatorColor")
    static let baseButton = Color("baseButton")
    static let baseButtonBorder = Color("baseButtonBorder")
    static let baseIndicator = Color("baseIndicator")
    static let baseIndicatorSelected = Color("baseIndicatorSelected")
    static let baseSecondaryBackground = Color("baseSecondaryBackground")
    static let baseText = Color("baseText")
    static let baseAccent = Color("baseAccent")
    static let baseAccentText = Color("baseAccentText")

    private static func Color(_ key: String) -> UIColor {
       if let color = UIColor(named: key, in: .main, compatibleWith: nil) {
           return color
       }

       return .black
    }
}
