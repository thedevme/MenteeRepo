//
//  Animation07.swift
//  Animations
//
//  Created by Craig Clayton on 1/10/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct Animation07: View {

    var body: some View {
        VStack {
            Button("Change") {}

            Spacer()

            Circle()
                .stroke(Color.blue, style: StrokeStyle(lineWidth: 40, lineCap: .round))
                .frame(height: 300)
                .padding(40)

            Spacer()
        }
    }
}

struct Animation07_Previews: PreviewProvider {
    static var previews: some View {
        Animation07()
    }
}
