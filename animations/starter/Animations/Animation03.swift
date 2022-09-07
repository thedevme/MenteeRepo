import SwiftUI

struct Animation03: View {
    var body: some View {
        VStack {
            GeometryReader { geo in
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 100)
                    .position(CGPoint(x: 300, y: 300))
                    .opacity(1)
            }

            VStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.blue)
                    .frame(width: 300, height: 200)
                    .overlay(Image(systemName: "arrow.right"))
                    .rotationEffect(Angle.degrees(0))

                Spacer()

                Button("Change") {}
            }
        }
    }
}

struct Animation03_Previews: PreviewProvider {
    static var previews: some View {
        Animation03()
    }
}
