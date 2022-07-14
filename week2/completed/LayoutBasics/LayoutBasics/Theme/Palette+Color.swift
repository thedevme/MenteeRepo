import Foundation
import SwiftUI

extension Color {
    static let baseLightBlue = Color("baseLightBlue")
    static let baseDarkBlue = Color("baseDarkBlue")
}

extension UIColor {
    static let baseLightBlue = Color("baseLightBlue")
    static let baseDarkBlue = Color("baseDarkBlue")
    
    private static func Color(_ key: String) -> UIColor {
       if let color = UIColor(named: key, in: .main, compatibleWith: nil) {
           return color
       }

       return .black
    }
}
