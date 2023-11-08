//
//  Profile_Card.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 08/11/2023.
//

import SwiftUI

struct Profile_Card: View {
    var body: some View {
        
        HStack{
            
            Image("a1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .cornerRadius(15)
              
           Spacer()
            
            VStack{
                Text("Jastan Beber")
                    .font(.custom("SpaceGrotesk-semibold", size: 18))
                
                
                HStack{
                    Image("circle1")
                    
                    VStack(spacing: 10){
                        HStack{
                            Text("Your Card Limit")
                                .font(.custom("Space Grotesk", size: 14))
                                
                            Image(systemName: "chevron.right")
                                .padding(.leading,20)
                        }
                        
                        Text("5.876 USD of 5.907")
                            .font(.custom("SpaceGrotesk-semibold", size: 14))
                        
                    }
                }
            }.foregroundColor(.white)
                .frame(width: 230, alignment: .leading)
            
            
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
    Profile_Card()
}
