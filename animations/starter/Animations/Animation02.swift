import SwiftUI

struct Animation02: View {
    var body: some View {
        VStack {

            VStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 100)
                HStack {
                    Spacer()
                }
            }

            HStack(alignment: .top) {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 100)
                VStack {
                    Spacer()
                }
            }

            Button("Change") {}
        }
    }
}

struct Animation02_Previews: PreviewProvider {
    static var previews: some View {
        Animation02()
    }
}
