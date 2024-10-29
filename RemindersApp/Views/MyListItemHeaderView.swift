//
//  MyListItemHeaderView.swift
//  RemindersApp
//
//  Created by Justin Maronde on 10/29/24.
//

import SwiftUI

struct MyListItemHeaderView: View {
    
    let name: String
    let count: Int
    let color: Color

    var body: some View {
        HStack {
            Text(name)
                .font(.system(size: 28))
                .fontWeight(.bold)
                .foregroundColor(color)
                .padding()
            Spacer()
            Text("\(count)")
                .font(.system(size: 32))
                .foregroundColor(color)
                .padding()
        }
    }
}

#Preview {
    MyListItemHeaderView(name: "Groceries", count: 4, color: Color.green)
}
