//
//  DueDateSelectionView.swift
//  RemindersApp
//
//  Created by Justin Maronde on 10/29/24.
//

import SwiftUI

struct DueDateSelectionView: View {
    
    @Binding var dueDate: DueDate?
    @State private var selectedDate: Date = Date.today
    @State private var showCalendar: Bool = false
    
    var body: some View {
        Menu {
            Button {
                //action
                dueDate = .today
            } label: {
                VStack {
                    Text("Today \n \(Date.today.formatAsString)")
                }
            }
            
            Button {
                //action
                dueDate = .tomorrow
            } label: {
                VStack {
                    Text("Tomorrow \n \(Date.tomorrow.formatAsString)")
                }
            }
            
            Button {
                //action
                showCalendar = true
            } label: {
                Text("Custom")
            }
            
            
        } label: {
            Label(dueDate == nil ? "Add Date:" : dueDate!.title, systemImage: Constants.Icons.calendar)
        }
        .menuStyle(.borderedButton)
        .fixedSize()
        .popover(isPresented: $showCalendar) {
            DatePicker("Custom", selection: $selectedDate, displayedComponents: .date)
                .labelsHidden()
                .datePickerStyle(.graphical)
                .onChange(of: selectedDate) { newValue in
                    dueDate = .custom(newValue)
                    showCalendar = false
                }
        }
        
    }
}

#Preview {
    DueDateSelectionView(dueDate: .constant(nil))
}
