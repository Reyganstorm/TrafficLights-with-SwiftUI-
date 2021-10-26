//
//  TrafficLightsApp.swift
//  TrafficLights
//
//  Created by Руслан Штыбаев on 26.10.2021.
//

import SwiftUI

@main
struct TrafficLightsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
