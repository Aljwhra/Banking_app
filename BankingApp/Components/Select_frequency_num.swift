//
//  Select_frequency_num.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 09/11/2023.
//

import SwiftUI

struct Select_frequency_num: View ,Identifiable{
    
    var id = UUID()
    var textNum: String
    var textNumBackground: Color
    var backgroundCircle: Color
    var shadowBackground : Color
    
    var body: some View {
        
        VStack{
            
            Text(textNum)
                .font(.custom("SpaceGrotesk-semibold", size: 28))
                .foregroundStyle(textNumBackground)
                .background(
                    Circle()
                        .fill(backgroundCircle)
                        .stroke(Color(red: 0.35, green: 0.36, blue: 0.47).opacity(0.2), lineWidth: 1)
                        .frame(width: 80, height: 80))
                .shadow(color: Color(shadowBackground).opacity(0.31), radius: 9.275, x: 0, y: 18.55)
        }
    }
}

#Preview {
    Select_frequency_num(textNum: "3", textNumBackground: .color1, backgroundCircle: .white, shadowBackground: .clear)
}
