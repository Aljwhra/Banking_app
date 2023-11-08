//
//  Card_Settings.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 06/11/2023.
//

import SwiftUI

struct Card_Settings: View, Identifiable {
    
    var id = UUID()
    var icons: String
    var titile: String
    var backgroundIcon: Color
    
    @State private var isToggleOn: Bool = false
  //  @State private var isToggleOff: Bool = false
   // @State private var isToggleOn2: Bool = false
    
    var body: some View {
        HStack(spacing: 14){
            Image(icons)
                .frame(width: 53, height: 53)
                .background(backgroundIcon.opacity(0.1))
                .cornerRadius(15)
                          
              
            Toggle(titile, isOn: $isToggleOn)
                .toggleStyle(SwitchToggleStyle(tint: .mygreen))
                .font(.custom("SpaceGrotesk-medium", size: 16))
                .foregroundColor(Color.color3)
            
        }
        .background(
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 355, height: 60)
              .background(Color.color4)
              .cornerRadius(15)
        )
        .padding(.horizontal,25)
    }
}

#Preview {
    Card_Settings(icons: "command", titile: "Contactless payment", backgroundIcon: .mygreen)
}
