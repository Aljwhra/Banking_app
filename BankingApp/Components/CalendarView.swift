//
//  CalendarView.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 09/11/2023.
//

import SwiftUI

struct CalendarView: View {
    
    @State private var date = Date()
    
    
    var body: some View {
        VStack{
            DatePicker("Birthday", selection: $date, displayedComponents: .date)
                .accentColor(.myyellow)
                .background(RoundedRectangle(cornerRadius: 20)                 .fill(Color.white)
                    .shadow(radius: 1, x: 4, y: 4))
            
            
                .datePickerStyle(.graphical)
                .frame(width: 320)
            
            
        }
    }
}

#Preview {
    CalendarView()
}
