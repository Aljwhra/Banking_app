//
//  Recent_Transactions.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 07/11/2023.
//

import SwiftUI

struct Recent_Transactions1: View , Identifiable{
    
    
    var id = UUID()
    var imageName: String
    var titile: String
    var suptitile: String
    var price: String
    var backgroundColor: Color
    var priceColoe: Color
    var date: String
    
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
                  .font(Font.custom("Space Grotesk", size: 14))
                  .foregroundColor(Color.color1)

                
            }.frame(width: 200, height: 20, alignment: .leading)
              
            
            VStack(spacing: 5){
                Text(price)
                    .font(.custom("SpaceGrotesk-semibold", size: 18))
                    .foregroundColor(priceColoe)
                
                
                Text(date)
                    .font(Font.custom("Space Grotesk", size: 14))
               
                    .foregroundColor(.color1)
               
            }
            
        }
    }
}

#Preview {
    Recent_Transactions1(imageName: "arrow-left1", titile: "Health", suptitile: "Pharmacy", price: "+$343", backgroundColor: .mygreen, priceColoe: .mygreen, date: "Jun 10")
}
