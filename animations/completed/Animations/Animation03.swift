import SwiftUI

struct Animation03: View {
    @State private var change = false
    
    var body: some View {
        VStack {
            GeometryReader { geo in
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 100)
                    .position(CGPoint(x: 300, y: 300))
                    .opacity(self.change ? 0 : 1)
                    .animation(.default, value: change)
            }

            VStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.blue)
                    .frame(width: 300, height: 200)
                    .overlay(Image(systemName: "arrow.right"))
                    .rotationEffect(Angle.degrees(self.change ? 220 : 0))
                    .animation(.default, value: change)

                Spacer()

                Button("Change") {
                    self.change.toggle()
                }
            }
        }
    }
}

struct Animation03_Previews: PreviewProvider {
    static var previews: some View {
        Animation03()
    }
}
