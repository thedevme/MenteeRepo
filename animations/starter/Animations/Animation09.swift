//
//  Animation09.swift
//  Animations
//
//  Created by Craig Clayton on 1/10/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct Animation09: View {
    @State private var change = false

    var body: some View {
        VStack {
            Button("Change") {}
            ZStack {
                Image(systemName: "cloud.sun")
                    .font(.system(size: 200))
                    .symbolVariant(.fill)
                    .foregroundColor(.purple)
                    .opacity(0.3)

                Image(systemName: "cloud")
                    .font(.system(size: 200))
                    .symbolVariant(.fill)
                    .foregroundColor(.purple)
                    .opacity(0.3)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct Animation09_Previews: PreviewProvider {
    static var previews: some View {
        Animation09()
    }
}
