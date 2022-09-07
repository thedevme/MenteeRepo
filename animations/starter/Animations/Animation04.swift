import SwiftUI

struct Animation04: View {
    var body: some View {
        
        VStack {
            Button("Change") {
            }

            Spacer()

            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .shadow(radius: 8)
                .frame(width: 300, height: 200)
                .overlay(Text("Rotate from top left"))

            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .shadow(radius: 8)
                .frame(width: 300, height: 200)
                .overlay(Text("Rotate from bottom right"))

            Spacer()
        }
    }
}

struct Animation04_Previews: PreviewProvider {
    static var previews: some View {
        Animation04()
    }
}
