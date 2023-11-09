//
//  Profile_Card2.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 09/11/2023.
//

import SwiftUI

struct Profile_Card2: View {
    
    var imageName: String
    var titile: String
    var numTitile: String
    
    var body: some View {
        HStack(spacing: 10){
            
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .cornerRadius(15)
              
        
            
            VStack(alignment: .leading, spacing:0){
                
                HStack{
                    Text("Today")
                    Image(systemName: "chevron.down")
                       
                } 
                .font(Font.custom("Space Grotesk", size: 12))
                .foregroundColor(.white)
                .background(
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 68, height: 25)
                        .background(.white.opacity(0.35))
                        .cornerRadius(6))
               
                .padding(.leading,140)
                
                Text(titile)
                    .font(.custom("SpaceGrotesk-semibold", size: 18))
                
                        
                        Text(numTitile)
                    .font(.custom("SpaceGrotesk-semibold", size: 24))
                            
                   
                    
                
            }.foregroundColor(.white)
                .frame(width: 240, alignment: .leading)
            
            
        }
        .background(
            Rectangle()
                .fill(.mygreen)
                .frame(width: 354, height: 112)
                .cornerRadius(15)
                .shadow(color: Color(red: 0.46, green: 0.64, blue: 0.62).opacity(0.3), radius: 10, x: 0, y: 8)
                )
      
        .frame(width: 300)
    }
}

#Preview {
    Profile_Card2(imageName: "a1", titile: "You earned", numTitile: "390.20 USD")
}
