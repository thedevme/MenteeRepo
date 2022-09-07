import SwiftUI

struct Animation01: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .frame(width: 100, height: 100)
                .offset(x:-140)

            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .frame(width: 100, height: 100)
                .offset(CGSize(width: -140, height: 0))

            Button("Change") {}
        }
    }
}

struct Animation01_Previews: PreviewProvider {
    static var previews: some View {
        Animation01()
    }
}
