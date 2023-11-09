//
//  Hader_Chart.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 08/11/2023.
//

import SwiftUI

struct Hader_Chart: View {
    var body: some View {
        ZStack{
            Image("card2")
                .offset(y:-170)
               //.padding(.bottom,330)
                .shadow(color: Color(.red).opacity(0.3), radius: 4.5, x: 0, y: 9)

            VStack{
                
                HStack{
                    Image("arrow_insid")
                    Spacer()
                    Text("This month")
                        .font(Font.custom("Space Grotesk", size: 16))
                        .foregroundColor(.color1)
                      
                }.frame(width: 250, height: 30, alignment: .topLeading)
                
                HStack{
                    
                    Text("Balance")
                      .font(.custom("SpaceGrotesk-semibold", size: 18))
                      .foregroundColor(.color1)
                     
                    Spacer()
                    Image("trending-down")
                    Text("12.884 USD")
                        .font(Font.custom("Space Grotesk", size: 16))
                        .foregroundColor(.color1)
                        
                }.frame(width: 255, height: 30, alignment: .topLeading)
                
                
                
                
                HStack{
                    
                    Text("22.866")
                      .font(.custom("SpaceGrotesk-bold", size: 31))
                      .foregroundColor(.mygreen)
                     
                     
                    Spacer()
                    Image("trending-up")
                    Text("12.884 USD")
                        .font(Font.custom("Space Grotesk", size: 16))
                        .foregroundColor(.color1)
                        
                }.frame(width: 255, height: 30, alignment: .topLeading)
            }
            
        }
        .background(
        Rectangle()
            .foregroundColor(.clear)
            .frame(width: 344, height: 196.57143)
            .background(Color(red: 0.98, green: 0.98, blue: 0.98))
            .cornerRadius(18.42857))
    }
}

#Preview {
    Hader_Chart()
}
