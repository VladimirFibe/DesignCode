import SwiftUI

@main
struct RecipeApp: App {
    
    var body: some Scene {
        WindowGroup {
            RecipeView(recipe: RecipeModel.all[0])
        }
    }
}
