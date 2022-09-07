import SwiftUI

struct Animation06: View {
    var body: some View {

        VStack {
            Button("Change") {}

            Spacer()

            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .padding()

            Spacer()
        }
    }
}

struct Animation06_Previews: PreviewProvider {
    static var previews: some View {
        Animation06()
    }
}
