import SwiftUI

@main
struct DesignCodeiOS16App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(
                    Image("Wallpaper 2")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                )
        }
    }
}
