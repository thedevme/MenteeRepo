import SwiftUI

struct TicketsView: View {
    let items: [TicketItem] = [
        TicketItem(title: "Adult", amount: "$18.95", type: .stepper),
        TicketItem(title: "Child", amount: "$7.25", type: .button),
        TicketItem(title: "Senior", amount: "$8.90", type: .button)
    ]
    
    var body: some View {
        Text("Tickets View")
    }
}

struct TicketsView_Previews: PreviewProvider {
    static var previews: some View {
        TicketsView()
            .previewLayout(.sizeThatFits)
    }
}
