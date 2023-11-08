//
//  Token_Bonus2.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 07/11/2023.
//

import SwiftUI

struct Token_Bonus2: View ,Identifiable {
    
    
    var id = UUID()
    var titile: String
    var price: String
    var backgroundColor: Color
    
    var body: some View {
        VStack(alignment: .leading, spacing: 25){
            
            Image("box")
            
            VStack(alignment: .leading, spacing: 10){
                Text(titile)
                    .font(Font.custom("Space Grotesk", size: 15))
                    .foregroundColor(.white)
                
                Text(price)
                    .font(.custom("SpaceGrotesk-bold", size: 18))
                    .foregroundColor(.white)
            }
        }
        .background(
        Rectangle()
        .foregroundColor(.clear)
        .background(backgroundColor)
        .frame(width: 163,height: 130)
        .shadow(color: Color(red: 0.67, green: 0.78, blue: 0.76).opacity(0.25), radius: 12, x: 0, y: 6)
        .cornerRadius(15))
    }
}

#Preview {
    Token_Bonus2(titile: "Bonus received", price: "$22.42", backgroundColor: .myyellow)
}
