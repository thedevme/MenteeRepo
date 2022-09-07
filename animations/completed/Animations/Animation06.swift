import SwiftUI

struct Animation06: View {
    @State private var change = false
    
    var body: some View {

        VStack {
            Button("Change") {
                change.toggle()
            }

            Spacer()

            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .padding()
                .scaleEffect(change ? 0.1 : 1)
                .animation(.easeInOut, value: change)

            Spacer()
        }
    }
}

struct Animation06_Previews: PreviewProvider {
    static var previews: some View {
        Animation06()
    }
}
