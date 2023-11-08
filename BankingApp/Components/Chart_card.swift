//
//  Chart_card.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 06/11/2023.
//

import SwiftUI



struct Chart_card: View {
    
    
    var body: some View {
        VStack{
//            HStack{
//                Text("Savings")
//                  .font(.custom("SpaceGrotesk-bold", size: 22))
//                  .foregroundColor(.white)
//                  .frame(width: 130, alignment: .topLeading)
//                
//                Text("Chart")
//                  .font(Font.custom("Space Grotesk", size: 12))
//                  .foregroundColor(.white)
//                  .frame(width: 70, height: 30)
//                  .background(.white.opacity(0.35))
//                  .cornerRadius(50)
//                 
//                
//                Text("Table")
//                  .font(Font.custom("Space Grotesk", size: 12))
//                  .foregroundColor(.white)
//                  .frame(width: 110, alignment: .topLeading)
//            }
            
           
          Image("Image1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 354, height: 221)
           
            
        }
//        .background(
//            Rectangle()
//              .foregroundColor(.clear)
//              .frame(width: 354, height: 221)
//              .background(Color.mygreen)
//              .cornerRadius(15)
//        )
    }
}

#Preview {
    Chart_card()
}
