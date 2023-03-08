import SwiftUI

struct CategoryView: View {
    @EnvironmentObject var viewModel: RecipeViewModel
    let category: Category
    var recipes: [RecipeModel] {
        viewModel.recipes.filter { $0.category == category.rawValue}
    }
    var body: some View {
        ScrollView {
            RecipeList(recipes: recipes)
        }
        .navigationTitle("\(category.rawValue)s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.breakfast)
            .environmentObject(RecipeViewModel())
    }
}
