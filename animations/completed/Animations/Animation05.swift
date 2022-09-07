import SwiftUI

struct Animation05: View {
    @State private var change = false
    var body: some View {

        VStack {
            Button("Change") {
                change.toggle()
            }

            Spacer()

            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(width: change ? 350 : 100, height: change ? 200 : 100)
                .animation(.easeOut, value: change)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(width: change ? 350 : 100, height: change ? 200 : 100)
                .animation(.easeInOut, value: change)
            Spacer()
        }
    }
}

struct Animation05_Previews: PreviewProvider {
    static var previews: some View {
        Animation05()
    }
}
