//
//  QR_Cards.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 08/11/2023.
//

import SwiftUI

struct QR_Cards: View , Identifiable{
    
    var id = UUID()
    var imageName: String
    var titile: String
    var backgroundCard: Color
    
    var body: some View {
      
            VStack{
               
                Image(imageName)
                
                Text(titile)
                  .font(.custom("SpaceGrotesk-medium", size: 16))
                  .foregroundColor(.white)
                  
                
            }
            .background(
            Rectangle()
                .fill(backgroundCard)
                .frame(width: 100, height: 115)
                .cornerRadius(15))
            
       
    }
}

#Preview {
    QR_Cards(imageName: "clipboard", titile: "Bill", backgroundCard: .mygray)
}
