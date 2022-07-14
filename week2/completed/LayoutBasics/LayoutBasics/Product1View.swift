import SwiftUI

struct Product1View: View {
    var body: some View {
        ZStack {
            Color.gray.edgesIgnoringSafeArea(.all)
            product
                .padding(.horizontal, 20)
        }
    }
    
    var product: some View {
        HStack {
            VStack(alignment: .leading, spacing: 15) {
                Text("SALE")
                    .tracking(5)
                    .padding(10)
                    .background(Color.baseLightBlue)
                    .cornerRadius(5)
                    .custom(font: .regular, size: 9)
                
                Text("Place Item Name \nHere")
                    .custom(font: .bold, size: 20)
                    .foregroundColor(.baseDarkBlue)
                Text("Body text goes here")
                    .custom(font: .regular, size: 12)
            }
            
            Spacer()
            
            Image("image-placeholder")
                .resizable()
                .frame(width: 113, height: 104)
                .padding(.trailing, 15)
        }
        .padding(20)
        .background(.white)
        .cornerRadius(5)
    }
}

struct Product1View_Previews: PreviewProvider {
    static var previews: some View {
        Product1View().previewLayout(.fixed(width: 200, height: 300))
    }
}
