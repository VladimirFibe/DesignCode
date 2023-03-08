//
//  NewRecipeView.swift
//  Recipe
//
//  Created by Vladimir on 26.02.2023.
//

import SwiftUI

struct NewRecipeView: View {
    @EnvironmentObject var viewModel: RecipeViewModel
    @State private var showAddRecipe = false
    var body: some View {
        NavigationStack {
            VStack {
                Button {
                    showAddRecipe.toggle()
                } label: {
                    Text("Add recipe manually")
                }

            }
            .navigationBarTitle("New Recipe")
            .sheet(isPresented: $showAddRecipe) {
                AddRecipeView(viewModel: viewModel)
                    
            }
        }
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
            .environmentObject(RecipeViewModel())
    }
}
