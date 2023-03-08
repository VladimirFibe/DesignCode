import Foundation

final class RecipeViewModel: ObservableObject {
    @Published private(set) var recipes: [RecipeModel] = []
    
    init() {
        recipes = RecipeModel.all
    }
    
    func addRecipe(_ recipe: RecipeModel) {
        recipes.append(recipe)
    }
}
