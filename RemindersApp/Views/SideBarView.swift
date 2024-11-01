//
//  SideBarView.swift
//  RemindersApp
//
//  Created by Justin Maronde on 10/27/24.
//

import SwiftUI

struct SideBarView: View {
    
    @Environment(\.managedObjectContext) var context: NSManagedObjectContext
    @State private var isPresented: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {            
            MyListsView(vm: MyListsViewModel(context: context))
            
            Spacer()
            
            Button {
                isPresented = true
            } label: {
                HStack {
                    Image(systemName: Constants.Icons.plusCircle)
                    Text("Add List")
                }
            }
            .buttonStyle(.plain)
            .padding()
        }.sheet(isPresented: $isPresented) {
            // dismiss
        } content: {
            AddNewListView(vm: AddNewListViewModel(context: context))
        }

        
    }
}

#Preview {
    SideBarView()
}
