//
//  SettingsView.swift
//  Recipe
//
//  Created by Vladimir on 26.02.2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationStack {
            Text("Home")
                .navigationBarTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
