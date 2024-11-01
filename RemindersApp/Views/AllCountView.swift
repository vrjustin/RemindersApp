//
//  AllCountView.swift
//  RemindersApp
//
//  Created by Justin Maronde on 10/31/24.
//

import SwiftUI

struct AllCountView: View {
    
    let count: Int
    
    var body: some View {
        HStack {
            VStack {
                Image(systemName: Constants.Icons.trayCircleFill)
                    .font(.largeTitle)
                Text("All")
            }
            Spacer()
            VStack {
                Text("\(count)")
                    .font(.title)
                EmptyView()
            }
        }
        .padding()
        .background(Color.gray)
        .clipShape(RoundedRectangle(cornerRadius: 20.0, style: .continuous))
        .padding()
    }
}

#Preview {
    AllCountView(count: 12)
}
