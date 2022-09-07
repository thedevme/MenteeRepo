import SwiftUI

struct Animation01: View {
    @State private var change = false
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .frame(width: 100, height: 100)
                .offset(x: change ? 140 : -140)
                .animation(.default, value: change)

            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .frame(width: 100, height: 100)
                .offset(change ? CGSize(width: 140, height: 0) : CGSize(width: -140, height: 0))
                .animation(.default, value: change)

            Button("Change") {
                change.toggle()
            }
        }
    }
}

struct Animation01_Previews: PreviewProvider {
    static var previews: some View {
        Animation01()
    }
}
