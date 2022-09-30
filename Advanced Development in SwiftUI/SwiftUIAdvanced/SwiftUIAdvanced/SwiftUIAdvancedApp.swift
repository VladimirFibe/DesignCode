//
//  SwiftUIAdvancedApp.swift
//  SwiftUIAdvanced
//
//  Created by Vladimir Fibe on 30.09.2022.
//

import SwiftUI

@main
struct SwiftUIAdvancedApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
