//
//  Card_Balance.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 07/11/2023.
//

import SwiftUI

struct Card_Balance: View , Identifiable {
    
    var id = UUID()
    var titile: String
    var price: String
    
    var body: some View  {
        VStack(alignment: .leading ,spacing: 15){
           
            HStack{
                Text(titile)
                  .font(Font.custom("Space Grotesk", size: 14))
                  .kerning(0.14)
                  .foregroundColor(Color.color1)
                Spacer()
                Image(systemName: "chevron.right")
                    .font(.caption)
                    .foregroundColor(Color.color1)
            } .frame(width: 120, height: 25, alignment: .topLeading)
            
            Text(price)
              .font(
                Font.custom("SpaceGrotesk-semibold", size: 20))
              .foregroundColor(Color.color3)
             
            
        }
        .background(
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 163, height: 100)
          .background(Color(red: 0.97, green: 0.97, blue: 0.97))
          .cornerRadius(15))
    }
}

#Preview {
    Card_Balance(titile: "Positions", price: "$2250.00")
}
