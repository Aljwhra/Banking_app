//
//  Recent_Transactions2.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 07/11/2023.
//

import SwiftUI

struct Recent_Transactions2: View , Identifiable{
    
    
    var id = UUID()
    var imageName: String
    var titile: String
    var suptitile: String
    var date: String
    var price: String
    var backgroundColor: Color
    
   
    
    var body: some View {
        HStack(spacing:15){
            Image(imageName)
             
              .aspectRatio(contentMode: .fit)
              .frame(width: 60, height: 60)
              .background(backgroundColor.opacity(0.1))
              .cornerRadius(20)
            
            VStack(alignment: .leading, spacing: 5){
                Text(titile)
                    .font(.custom("SpaceGrotesk-medium", size: 18))
                
                Text(suptitile)
                  .font(Font.custom("Space Grotesk", size: 14))
                  .foregroundColor(Color.color1)

                
            }.frame(width: 200, height: 20, alignment: .leading)
              
            
            VStack(spacing: 5){
    
                Text(date)
                    .font(Font.custom("Space Grotesk", size: 14))
                    .foregroundColor(.color1)
                
                
                Text(price)
                    .font(.custom("SpaceGrotesk-semibold", size: 18))
                    .foregroundColor(.color3)
               
            }
            
        }
    
        
    }
}

#Preview {
    Recent_Transactions2(imageName: "mac", titile: "McDonald’s", suptitile: "Foods & Coffee", date: "Today", price: "- $43.50", backgroundColor: .yellow)
}
