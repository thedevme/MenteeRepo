import SwiftUI

struct CreditCardView: View {
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .top)) {
            Image("cc-background")
            .resizable()
            .frame(width: 290, height: 177)
            
            VStack(alignment: .leading, spacing: 20) {
                Image("cc-logo")
                
                HStack {
                    Text("••••").custom(font: .courier, size: 17)
                    Spacer()
                    Text("••••").custom(font: .courier, size: 17)
                    Spacer()
                    Text("••••").custom(font: .courier, size: 17)
                    Spacer()
                    Text("0113").custom(font: .courier, size: 17)
                }
                
                HStack {
                    Text("PEEELY AGENCY")
                    Spacer()
                    Text("11/22")
                }
                .custom(font: .courier, size: 16)
            }
            .padding(.top, 40)
            .padding(.horizontal, 20)
            .foregroundColor(.white)
            .frame(width: 290, height: 177)
        }
    }
}

struct CreditCardView_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardView().previewLayout(.sizeThatFits)
    }
}
