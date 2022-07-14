//
//  Product2View.swift
//  LayoutBasics
//
//  Created by Craig Clayton on 7/13/22.
//

import SwiftUI

struct Product2View: View {
    var body: some View {
        ZStack {
            Color.gray.edgesIgnoringSafeArea(.all)
            product
                .frame(width: 225)
        }
    }
    
    var product: some View {
        VStack(alignment: .center) {
            HStack {
                Text("Title Goes \nHere")
                    .font(.system(size: 28, weight: .bold))
                Spacer()
            }
            Image("image-placeholder")
                .resizable()
                .frame(width: 100, height: 89)
            
            HStack {
                Button(action: {}) {
                    Text("View Details")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.white)
                }
                .buttonStyle(.plain)
                .padding(10)
                .background(.blue)
                .cornerRadius(3)
                
                Spacer()
            }.padding(.top, 60)
        }
        .padding(20)
        .background(Color.white)
        .cornerRadius(5)
        
    }
}

struct Product2View_Previews: PreviewProvider {
    static var previews: some View {
        Product2View()
    }
}
