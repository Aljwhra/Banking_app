//
//  Transactions_Card.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 08/11/2023.
//

import SwiftUI

struct Transactions_Card: View ,Identifiable {
    
    var id = UUID()
    var imageName: String
    var titile: String
    var suptitile: String
    var price: String
    var priceColoe: Color
    var backgroundColorImage: Color
    var backgroundColor: Color
    var shadowbackgroundColor: Color
    
    
    var body: some View {
        HStack{
            
            
            Image(imageName)
              .frame(width: 60, height: 60)
              .background(backgroundColorImage.opacity(0.1))
              .cornerRadius(15)
            
            VStack(alignment: .leading, spacing: 5){
                Text(titile)
                    .font(.custom("SpaceGrotesk-medium", size: 18))
                   
                
                Text(suptitile)
                  .font(Font.custom("Space Grotesk", size: 12))
                  .foregroundColor(Color.color1)

                
            }.frame(width: 190, height: 20, alignment: .leading)
              
            
            
            Text(price)
              .font(.custom("SpaceGrotesk-semibold", size: 18))
              .foregroundColor(priceColoe)
            
        }
        .background(
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 349, height: 83)
          .background(backgroundColor)
          .cornerRadius(15))
        .shadow(color: shadowbackgroundColor.opacity(0.2), radius: 30, x: 7.43, y: 49.03)
    }
}

#Preview {
    Transactions_Card(imageName: "send2", titile: "Salary", suptitile: "May 10.40PM", price: "+ $233", priceColoe: .color3, backgroundColorImage: .orange, backgroundColor: .mygray, shadowbackgroundColor: .black)
}
