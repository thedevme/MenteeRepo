import SwiftUI

struct Animation02: View {
    @State private var change = false
    
    var body: some View {
        VStack {
            VStack(alignment: change ? .trailing : .leading) {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 100)
                    .animation(.default, value: change)
                
                HStack {
                    Spacer()
                }
            }

            HStack(alignment: change ? .bottom : .top) {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 100)
                    .animation(.default, value: change)
                VStack {
                    Spacer()
                }
            }

            Button("Change") {
                self.change.toggle()
            }
        }
    }
}

struct Animation02_Previews: PreviewProvider {
    static var previews: some View {
        Animation02()
    }
}
