//
//  Statistic_View.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 07/11/2023.
//

import SwiftUI

struct Statistic_View: View {
    var body: some View {
        
        NavigationStack{
            ZStack{
                Color.mygreen
                    .ignoresSafeArea()
                Text("My Cards")
                  .font(.custom("SpaceGrotesk-semibold", size: 34))
                  .foregroundColor(.white)
                  .frame(width: 350, height: 37, alignment: .topLeading)
                
                Statistic_Chart()
                
                
            }
            
            .navigationTitle("Statistic")
            .navigationBarTitleDisplayMode(.inline) // Center the title
            .navigationBarItems(trailing:Button(action: {}) {Image("bill2")})
            .navigationBarItems(leading:Button(action: {}) {Image("align-left2")})
        }
    }
}

#Preview {
    Statistic_View()
}
