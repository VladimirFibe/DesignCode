import SwiftUI

@main
struct RecipeApp: App {
    @StateObject var viewModel = RecipeViewModel()
    var body: some Scene {
        WindowGroup {
            TabBar()
                .environmentObject(viewModel)
        }
    }
}
