//
//  Client.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 08/11/2023.
//

import SwiftUI

struct Client: View {
    var body: some View {
        VStack(spacing: 20){
            HStack(spacing: 40){
                Text("Client")
                
                Image(systemName: "chevron.down")
                  
            }.foregroundColor(.white)
            
            HStack(spacing: 15){
                Text("998")
                  .font(.custom("SpaceGrotesk-semibold", size: 22))
                 
                Text("Clients")
                  .font(Font.custom("Space Grotesk", size: 14))
                 
                
            }.foregroundColor(.white)
            
            
            
            ZStack{
                Image("4")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40,height: 40)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                    .offset(x:-40)
                
                Image("5")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40,height: 40)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                  .offset(x:-15)
                
                Image("6")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40,height: 40)
                   
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                  .offset(x:12)
                
                Image("7")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40,height: 40)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                    .offset(x:30)
            }
        }
        .background(
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 163, height: 197)
          .background(Color.mygreen)
          .cornerRadius(15))
    }
}

#Preview {
    Client()
}
