//
//  Transactions_history.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 06/11/2023.
//

import SwiftUI

struct Transactions_history: View , Identifiable {
    
    var id = UUID()
    var imageName: String
    var titile: String
    var suptitile: String
    var price: String
    var backgroundColor: Color
    var priceColoe: Color
    
    var body: some View {
        
        HStack(spacing:15){
            
            Image(imageName)
              .frame(width: 60, height: 60)
              .background(backgroundColor.opacity(0.1))
              .cornerRadius(15)
            
            VStack(alignment: .leading, spacing: 5){
                Text(titile)
                    .font(.custom("SpaceGrotesk-medium", size: 18))
                
                Text(suptitile)
                  .font(Font.custom("Space Grotesk", size: 10))
                  .foregroundColor(Color.color1)

                
            }.frame(width: 200, height: 20, alignment: .leading)
              
            
            
            Text(price)
              .font(.custom("SpaceGrotesk-semibold", size: 18))
              .foregroundColor(priceColoe)
            
        }
    }
}

#Preview {
    Transactions_history(imageName: "send", titile: "McDonalds", suptitile:"May 10.40PM" , price: "- $233", backgroundColor: .mygreen, priceColoe:.color2)
}
