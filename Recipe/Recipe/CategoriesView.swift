//
//  CategoriesView.swift
//  Recipe
//
//  Created by Vladimir on 26.02.2023.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationStack {
            Text("Home")
                .navigationBarTitle("Categories")
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
