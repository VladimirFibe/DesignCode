import SwiftUI

struct HomeView: View {
    @EnvironmentObject var viewModel: RecipeViewModel

    var body: some View {
        NavigationStack {
            ScrollView {
                RecipeList(recipes: viewModel.recipes)
            }
            .navigationBarTitle("My Recipes")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RecipeViewModel())
    }
}
