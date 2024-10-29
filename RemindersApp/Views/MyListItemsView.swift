//
//  MyListItemsView.swift
//  RemindersApp
//
//  Created by Justin Maronde on 10/29/24.
//

import SwiftUI

struct MyListItemsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            List(1...10, id: \.self) { index in
                Text("Item: \(index)")
            }
        }
    }
}

#Preview {
    MyListItemsView()
}
