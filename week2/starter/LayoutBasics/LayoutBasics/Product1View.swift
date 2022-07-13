import SwiftUI

struct Product1View: View {
    var body: some View {
        Text("Product 1 View")
    }
}

struct Product1View_Previews: PreviewProvider {
    static var previews: some View {
        Product1View().previewLayout(.fixed(width: 200, height: 300))
    }
}
