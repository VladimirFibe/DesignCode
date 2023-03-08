import SwiftUI

struct RecipeModel: Identifiable, Hashable {
    let id: Int
    let name: String
    let image: String
    var description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let dataPublished: String
    let url: String
    
    init(name: String, category: Category, description: String, ingredients: String, directions: String) {
        self.name = name
        self.category = category.rawValue
        self.description = description
        self.ingredients = ingredients
        self.directions = directions
        image = ""
        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        dataPublished = dateFormatter.string(from: now)
        print(dataPublished)
        url = ""
        id = 1
    }
    
    init(recipe: Recipe) {
        id = recipe.id
        name = recipe.title
        image = recipe.image
        description = ""
        ingredients = "some ingredients"
        category = "Breakfast"
        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        dataPublished = dateFormatter.string(from: now)
        url = recipe.sourceURL
        directions = ""
    }
    
    static let all: [RecipeModel] = RecipeHTTPClient.shared.getRecipes()
}

enum Category: String, Identifiable, CaseIterable {
    var id: String { self.rawValue }
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
