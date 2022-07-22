//
//  YouStoryApp.swift
//  YouStory
//
//  Created by Jonathan Gurr on 7/12/22.
//

import SwiftUI

@main
struct YouStoryApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
