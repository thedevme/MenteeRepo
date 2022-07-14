import SwiftUI

@main
struct LayoutBasicsApp: App {
    
    init() {
        printFonts()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    func printFonts() {
        UIFont.familyNames.forEach({ familyName in
            let fontNames = UIFont.fontNames(forFamilyName: familyName)
            print(familyName, fontNames)
        })
    }
}
