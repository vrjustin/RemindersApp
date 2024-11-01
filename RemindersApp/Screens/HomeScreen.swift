//
//  HomeScreen.swift
//  RemindersApp
//
//  Created by Justin Maronde on 10/27/24.
//

import SwiftUI

struct HomeScreen: View {
    @Environment(\.managedObjectContext) var context: NSManagedObjectContext
    
    var body: some View {
        NavigationView {
            let myListVM = MyListsViewModel(context: context)
            let firstListVM = myListVM.myLists.first
            
            SideBarView()
                .frame(minWidth: 200)
            
            if let firstListVM = firstListVM {
                MyListItemHeaderView(name: firstListVM.name, count: firstListVM.itemsCount, color: firstListVM.color)
                
                MyListItemsView(items: firstListVM.items)
            }
        }
        .toolbar {
            ToolbarItem(placement: .navigation) {
                Button(action: toggleSidebar) {
                    Image(systemName: "sidebar.left")
                }
            }
        }
    }
    
    private func toggleSidebar() {
            NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
    }
}

#Preview {
    HomeScreen()
}
