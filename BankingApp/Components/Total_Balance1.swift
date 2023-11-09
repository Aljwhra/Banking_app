//
//  Total_Balance1.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 09/11/2023.
//

import SwiftUI

struct Total_Balance1: View, Identifiable {
    
    var id = UUID()
    var imageName: String
    var titile: String
    var suptitile: String
    var price: String
    var backgroundColor: Color
    var priceColor: Color
    var priceBackgroundColor: Color
    
    var body: some View {
        
        HStack(spacing: 9){
            
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

                
            }.frame(width: 175, height: 20, alignment: .leading)
              
            
            
            Text(price)
              .font(.custom("SpaceGrotesk-semibold", size: 18))
              .foregroundColor(priceColor)
              .frame(width: 94, height: 40)
              .background(priceBackgroundColor.opacity(0.1))
              .cornerRadius(40)
        }
    }
    
}

#Preview {
    Total_Balance1(imageName: "PayPal", titile: "Paypal", suptitile:"Jun 10" , price: "+$343.00", backgroundColor: .blue, priceColor:.color2, priceBackgroundColor: .color2)
}
