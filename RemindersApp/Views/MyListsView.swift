//
//  MyListsView.swift
//  RemindersApp
//
//  Created by Justin Maronde on 10/28/24.
//

import SwiftUI

struct MyListsView: View {
    
    @StateObject var vm: MyListsViewModel
    
    init(vm: MyListsViewModel) {
        _vm = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            List {
                Text("My Lists")
                ForEach(vm.myLists) { myList in
                    
                    NavigationLink {
                        MyListItemHeaderView(name: myList.name, count: 4, color: myList.color)
                        
                        MyListItemsView(items: myList.items, onItemAdded: { title, dueDate in
                            vm.saveTo(list: myList, title: title, dueDate: dueDate)
                        }, onItemDeleted: vm.deleteItem, onItemCompleted: vm.markAsCompleted)
                        
                        
                    } label: {
                        HStack {
                            Image(systemName: Constants.Icons.line3HorizontalCircleFill)
                                .font(.title)
                                .foregroundColor(myList.color)
                            Text(myList.name)
                        }
                    }
                    .contextMenu {
                        Button {
                            vm.delete(myList)
                        } label: {
                            Label("Delete", systemImage: Constants.Icons.trash)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    let context = CoreDataManager.shared.persistentContainer.viewContext
    MyListsView(vm: MyListsViewModel(context: context))
}
