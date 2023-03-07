import SwiftUI

struct HomeView: View {
    @State var recipes: [RecipeModel] = RecipeModel.all

    var body: some View {
        NavigationStack {
            ScrollView {
                RecipeList(recipes: recipes)
            }
            .navigationBarTitle("My Recipes")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
