import SwiftUI

struct Animation04: View {
    @State private var change = false
    
    var body: some View {
        
        VStack {
            Button("Change") {
                self.change.toggle()
            }

            Spacer()

            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .shadow(radius: 8)
                .frame(width: 300, height: 200)
                .overlay(Text("Rotate from top left"))
                .rotationEffect(Angle.degrees(change ? 220 : 0), anchor: .topLeading)
                .animation(.easeInOut, value: change)

            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .shadow(radius: 8)
                .frame(width: 300, height: 200)
                .overlay(Text("Rotate from bottom right"))
                .rotationEffect(Angle.degrees(change ? 220 : 0), anchor: .bottomTrailing)
                .animation(.default, value: change)

            Spacer()
        }
    }
}

struct Animation04_Previews: PreviewProvider {
    static var previews: some View {
        Animation04()
    }
}
