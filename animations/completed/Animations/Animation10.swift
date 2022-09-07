import SwiftUI

struct Animation10: View {

    @State private var gradientA: [Color] = [.basePinkTop,
                                             .basePinkBottom]

    @State private var gradientB: [Color] = [.basePurpleTop,
                                             .basePurpleBottom]

    @State private var gradientC: [Color] = [.baseOrangeTop,
                                             .baseOrangeBottom]
    func startTimer() {
       
    }

    func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: self.gradientC),
                           startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)

            LinearGradient(gradient: Gradient(colors: self.gradientB),
                       startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)

            LinearGradient(gradient: Gradient(colors: self.gradientA),
                       startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)


            ZStack {
                Group {
                    Image(systemName: "3.circle")
                    Image(systemName: "2.circle")
                        .offset(x: 0)
                    Image(systemName: "1.circle")
                        .offset(x: 0)
                }.font(.system(size: 200))
            }
        }
        .onAppear {
            self.startTimer()
        }
    }
}

struct Animation10_Previews: PreviewProvider {
    static var previews: some View {
        Animation10()
    }
}
