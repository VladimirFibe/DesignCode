//
//  HomeView.swift
//  Recipe
//
//  Created by Vladimir on 26.02.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            Text("Home")
                .navigationBarTitle("My Recipes")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
