//
//  Total_Income2.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 08/11/2023.
//

import SwiftUI

struct Total_Income2: View , Identifiable {
    
    var id = UUID()
    var image: String
    var price: String
    var titile: String
    var backgroundColor: Color
    
    var body: some View {
        VStack(spacing: 10){
            
           
                
                Image(systemName: image )
                    .font(.title)
                    .foregroundStyle(.white)
                    .frame(width: 60, height: 60)
                    .background(.white.opacity(0.2))
                    .cornerRadius(15)
                    
                
                Text(price)
                    .font(.custom("SpaceGrotesk-bold", size: 18))
                    .foregroundColor(.white)
                    
                
                Text(titile)
                    .font(Font.custom("Space Grotesk", size: 15))
                    .foregroundColor(.white)
                   
               
            
        }
        .background(
        Rectangle()
        .foregroundColor(.clear)
        .background(backgroundColor)
        .frame(width: 163, height: 171)
        .shadow(color: Color(red: 0.6, green: 0.64, blue: 0.71).opacity(0.1), radius: 4.5, x: 0, y: 9)
        .cornerRadius(15))
    }
}

#Preview {
    Total_Income2(image:"person", price: "1.650.00", titile: "Peoples", backgroundColor: .mygreen)
}
