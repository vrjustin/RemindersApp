//
//  SideBarView.swift
//  RemindersApp
//
//  Created by Justin Maronde on 10/27/24.
//

import SwiftUI

struct SideBarView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("All Items Count: 4")
            
            List(1...4, id: \.self) { index in
                Text("List Item \(index)")
            }
            
            Spacer()
            
            Button("Add New List") {
                
            }
        }
    }
}

#Preview {
    SideBarView()
}
