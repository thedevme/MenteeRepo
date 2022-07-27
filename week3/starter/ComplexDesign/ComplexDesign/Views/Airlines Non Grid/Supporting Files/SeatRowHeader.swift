import SwiftUI

struct SeatRowHeader: View {
    let header: String
    var body: some View {
        HStack {
            Rectangle()
                .frame(height: 1)
                .frame(minWidth: 0, maxWidth: .infinity)
            Text(header.uppercased())
                .layoutPriority(1)
                .custom(font: .regular, size: 14)
            Rectangle()
                    .frame(height: 1)
                    .frame(minWidth: 0, maxWidth: .infinity)
        }.foregroundColor(.white)
    }
}

struct SeatRowHeader_Previews: PreviewProvider {
    static var previews: some View {
        SeatRowHeader(header: "Business Class")
    }
}
