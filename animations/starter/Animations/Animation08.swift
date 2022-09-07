import SwiftUI

struct Animation08: View {
    @State private var change = false

    var body: some View {
        VStack {
            Text("Duration: Default")
            Image(systemName: "hare.fill")
                .foregroundColor(.purple)
                .font(.system(size: 30))


            Text("Duration: 2 seconds")
            Image(systemName: "tortoise.fill")
                .foregroundColor(.purple)
                .font(.system(size: 30))

            Button("Change") {
            }
        }
    }
}

struct Animation08_Previews: PreviewProvider {
    static var previews: some View {
        Animation08()
    }
}
