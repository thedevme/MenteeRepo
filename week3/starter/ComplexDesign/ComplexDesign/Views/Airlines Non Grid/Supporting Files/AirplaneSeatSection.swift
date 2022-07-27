import SwiftUI

enum SeatSection: String {
    
}

struct AirplaneSeatSection: View {
    var seatRows: [String] = ["A", "B", "C", "D", "E", "F"]
    
    var body: some View {
        Text("Seat Section")
    }
}

struct AirplaneSeatSection_Previews: PreviewProvider {
    static var previews: some View {
        AirplaneSeatSection()
    }
}
