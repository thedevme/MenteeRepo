import SwiftUI

struct Animation08: View {
    @State private var change = false

    var body: some View {
        VStack {
            Text("Duration: Default")
            
            Image(systemName: "hare.fill")
                .foregroundColor(.purple)
                .font(.system(size: 30))
                .offset(x: change ? 140 : -140)
                .animation(.default, value: change)

            Text("Duration: 2 seconds")
            
            Image(systemName: "tortoise.fill")
                .foregroundColor(.purple)
                .font(.system(size: 30))
                .offset(x: change ? 140 : -140)
                .animation(.easeOut(duration: 5), value: change)

            Button("Change") {
                change.toggle()
            }
        }
    }
}

struct Animation08_Previews: PreviewProvider {
    static var previews: some View {
        Animation08()
    }
}
