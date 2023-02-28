//
//  HomeView.swift
//  Recipe
//
//  Created by Vladimir on 26.02.2023.
//

import SwiftUI

struct HomeView: View {
    @State var recipes: [RecipeModel] = RecipeModel.all
    var body: some View {
        NavigationStack {
            RecipeList(recipes: recipes)
            .navigationBarTitle("My Recipes")
        }

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
