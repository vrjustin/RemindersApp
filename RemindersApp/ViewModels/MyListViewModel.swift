//
//  MyListViewModel.swift
//  RemindersApp
//
//  Created by Justin Maronde on 10/28/24.
//

import Foundation
import CoreData
import SwiftUI

struct MyListViewModel: Identifiable {
    
    private let myList: MyList
    
    init(myList: MyList) {
        self.myList = myList
    }
    
    var id: NSManagedObjectID {
        myList.objectID
    }
    
    var name: String {
        myList.name ?? ""
    }
    
    var color: Color {
        Color(myList.color ?? .clear)
    }
    
}
