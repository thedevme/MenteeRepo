import SwiftUI

struct LargeButton: View {
    let title: String
    var logo: String = ""
    var isSecondaryButton: Bool = false
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                if logo.isNotEmpty { Image(logo) }
                Text(title)
                    .custom(font: .regular, size: 18)
            }
        }
        .padding(.vertical, 18)
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(isSecondaryButton ? Color.baseLightBlue : Color.baseDarkBlue)
        .cornerRadius(5)
        .foregroundColor(isSecondaryButton ? Color.baseDarkBlue : .white)
    }
}

struct LargeButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            LargeButton(title: "Paypal", logo: "paypal-logo" , action: {})
            LargeButton(title: "Add Credit Card", action: {})
            LargeButton(title: "Credit or Debit Card", isSecondaryButton: true, action: {})
        }.padding(10)
    }
}
