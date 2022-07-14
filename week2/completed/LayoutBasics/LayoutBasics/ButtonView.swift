import SwiftUI

struct ButtonView: View {

    var body: some View {
        Button(action: {}) {
            Text("Add Credit Card")
                .custom(font: .regular, size: 18)
        }
        .padding(.vertical, 18)
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(Color.baseDarkBlue)
        .cornerRadius(5)
        .foregroundColor(.white)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView().padding(10)
    }
}
