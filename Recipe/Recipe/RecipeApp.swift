import SwiftUI

@main
struct RecipeApp: App {
    init() {
        RecipeHTTPClient.shared.getProduct()
    }
    var body: some Scene {
        WindowGroup {
            TabBar()
        }
    }
}
