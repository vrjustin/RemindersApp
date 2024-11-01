//
//  CoreDataManager.swift
//  RemindersApp
//
//  Created by Justin Maronde on 10/27/24.
//

import Foundation
import CoreData

class CoreDataManager {
    
    let persistentContainer: NSPersistentContainer
    static let shared = CoreDataManager()
    
    private init() {
        
        persistentContainer = NSPersistentContainer(name: "RemindersModel")
        persistentContainer.loadPersistentStores { _, error in
            if let error = error {
                fatalError("Failed to load persistent stores: \(error)")
            }
        }
        
    }
}
