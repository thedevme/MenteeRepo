import SwiftUI

struct Animation07: View {
    @State private var change = false
    @State private var progress = 1.0

    var body: some View {
        VStack {
            Button("Change") {
                self.change.toggle()
                self.progress = self.change ? 0.5 : 1
            }

            Spacer()

            ZStack {
                Circle()
                    .stroke(Color.gray, style: StrokeStyle(lineWidth: 42, lineCap: .round))
                    .frame(height: 300)
                    .padding(40)
                
                Circle()
                    .trim(from: 0, to: progress)
                    .stroke(Color.blue, style: StrokeStyle(lineWidth: 40, lineCap: .round))
                    .frame(height: 300)
                    .rotationEffect(.degrees(-90))
                    .padding(40)
                .animation(.default, value: change)
            }

            Spacer()
        }
    }
}

struct Animation07_Previews: PreviewProvider {
    static var previews: some View {
        Animation07()
    }
}
