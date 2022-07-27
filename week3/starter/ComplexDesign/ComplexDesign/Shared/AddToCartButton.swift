import SwiftUI

struct AddToCartButton: View {
    var body: some View {
        HStack(spacing: 0) {
            Text("ADD")
                .custom(font: .heavy, size: 14)
            Text("TICKET")
                .custom(font: .regular, size: 14)
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding(.horizontal, 5)
        .padding(.vertical, 8)
        .background(Color.baseButton)
        .buttonStyle(PlainButtonStyle())
        .overlay(
            RoundedRectangle(cornerRadius: 4)
                .stroke(Color.baseButtonBorder, lineWidth: 1))
        
    }
}

struct AddToCartButton_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartButton()
    }
}
