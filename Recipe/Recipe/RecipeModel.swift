import Foundation

struct RecipeModel: Identifiable {
    let id: Int
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let dataPublished: String
    let url: String
    
    init(recipe: Recipe) {
        id = recipe.id
        name = recipe.title
        image = recipe.image ?? ""
        description = recipe.summary
        ingredients = "some ingredients"
        directions = recipe.instructions
        category = "Breakfast"
        dataPublished = "today"
        url = recipe.sourceURL
    }
    
    static let all: [RecipeModel] = RecipeHTTPClient.shared.getRecipes()
}

enum Category: String {
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appertizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dissert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}
