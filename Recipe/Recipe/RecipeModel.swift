import SwiftUI

struct RecipeModel: Identifiable {
    let id: Int
    let name: String
    let image: String
    var description: LocalizedStringKey
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let dataPublished: String
    let url: String
    
    init(recipe: Recipe) {
        id = recipe.id
        name = recipe.title
        image = recipe.image
        description = ""
        do {
            let dom = try HTMLParser().parse(html: recipe.summary)
            let markdown = dom.toMarkdown(options: .unorderedListBullets)
            description = LocalizedStringKey(markdown)
            print(description)
        } catch {}
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
