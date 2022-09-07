import SwiftUI

struct Animation09: View {
    @State private var change = false

    var body: some View {
        VStack {
            Button("Change") {
                change.toggle()
            }
            ZStack {
                Image(systemName: "cloud.sun")
                    .font(.system(size: 200))
                    .symbolVariant(.fill)
                    .foregroundColor(.purple)
                    .opacity(0.3)
                    .offset(x: change ? 240 : -240)
                    .animation(.linear(duration: 15), value: change)

                Image(systemName: "cloud")
                    .font(.system(size: 200))
                    .symbolVariant(.fill)
                    .foregroundColor(.purple)
                    .opacity(0.3)
                    .offset(x: change ? 240 : -240, y: 200)
                    .animation(.linear(duration: 10), value: change)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct Animation09_Previews: PreviewProvider {
    static var previews: some View {
        Animation09()
    }
}
