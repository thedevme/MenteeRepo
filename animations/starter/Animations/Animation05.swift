import SwiftUI

struct Animation05: View {
    var body: some View {

        VStack {
            Button("Change") {}

            Spacer()

            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(width: 100, height: 100)
                .scaleEffect(1)
            Spacer()
        }
    }
}

struct Animation05_Previews: PreviewProvider {
    static var previews: some View {
        Animation05()
    }
}
