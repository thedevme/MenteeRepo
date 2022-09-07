//
//  ScaledFont.swift
//
//
//  Created by Craig Clayton on 11/20/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import Foundation
import SwiftUI

@available(iOS 13, macCatalyst 13, tvOS 13, watchOS 6, *)
struct ScaledFont: ViewModifier {
    @Environment(\.sizeCategory) var sizeCategory
    var name: String
    var size: CGFloat

    func body(content: Content) -> some View {
       let scaledSize = UIFontMetrics.default.scaledValue(for: size)
        return content.font(.custom(name, size: scaledSize))
    }
}

@available(iOS 13, macCatalyst 13, tvOS 13, watchOS 6, *)
extension View {
    func customFont(_ font: CustomTextStyle) -> some View {
        return scaledFont(name: font.name.rawValue, size: CGFloat(font.size))
    }

    private func scaledFont(name: String, size: CGFloat) -> some View {
        return self.modifier(ScaledFont(name: name, size: size))
    }
}



