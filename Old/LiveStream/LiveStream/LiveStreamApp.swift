//
//  LiveStreamApp.swift
//  LiveStream
//
//  Created by Vladimir Fibe on 11/30/22.
//

import SwiftUI

@main
struct LiveStreamApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
