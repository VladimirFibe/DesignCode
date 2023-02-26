//
//  FavoritesView.swift
//  Recipe
//
//  Created by Vladimir on 26.02.2023.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationStack {
            Text("Home")
                .navigationBarTitle("Favorites")
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
