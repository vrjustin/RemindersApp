//
//  RemindersAppApp.swift
//  RemindersApp
//
//  Created by Justin Maronde on 10/27/24.
//

import SwiftUI

@main
struct RemindersAppApp: App {
    var body: some Scene {
        WindowGroup {
            let viewContext = CoreDataManager.shared.persistentContainer.viewContext
            HomeScreen()
                .environment(\.managedObjectContext, viewContext)
        }
    }
}
