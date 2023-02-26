//
//  NewRecipeView.swift
//  Recipe
//
//  Created by Vladimir on 26.02.2023.
//

import SwiftUI

struct NewRecipeView: View {
    var body: some View {
        NavigationStack {
            Text("Home")
                .navigationBarTitle("New Recipe")
        }
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
