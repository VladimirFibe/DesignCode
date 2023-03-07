import SwiftUI

struct RecipeList: View {
    var recipes: [RecipeModel]
    var body: some View {
        VStack {
            Text("\(recipes.count) \(recipes.count > 1 ? "recipes" : "recipe")")
                .font(.headline)
                .fontWeight(.medium)
                .opacity(0.7)
                .frame(maxWidth: .infinity, alignment: .leading)
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15) {
                ForEach(recipes) { recipe in
                    RecipeCard(recipe: recipe)
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
    }
}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
