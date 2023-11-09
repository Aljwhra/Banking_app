//
//  Se_ Budget_View.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 09/11/2023.
//

import SwiftUI

struct Set_Budget1_View: View {
    
    let Total_Balance1Arry = [
        Total_Balance1(imageName: "hbo", titile: "Master card", suptitile:"Jun 10" , price: "+$343.00", backgroundColor: .myyellow, priceColor:.mygreen, priceBackgroundColor: .mygreen),
        Total_Balance1(imageName: "netfilx", titile: "Netfix", suptitile:"Jun 10" , price: "-$233.00", backgroundColor: .mygreen, priceColor:.color2, priceBackgroundColor: .color2),
        Total_Balance1(imageName: "pizza", titile: "The Pizzza Co.", suptitile:"Jun 10" , price: "-$233.00", backgroundColor: .myyellow, priceColor:.color2, priceBackgroundColor: .color2)
        
        
    ]
    
    var body: some View {
        
        
        VStack (spacing: 40){
                Text("Set Budget")
                    .font(
                        Font.custom("Space Grotesk", size: 22)
                            .weight(.semibold)
                        
                    )
                  
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .background(
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 414, height: 550)
                            .background(Color(red: 0.34, green: 0.7, blue: 0.67))
                            .cornerRadius(35))
                   

              
                CalendarView()
            ScrollView{
              
                
                HStack{
                    Text("January 8, Tuesday")
                        .font(
                            Font.custom("Space Grotesk", size: 16)
                                .weight(.medium)
                        )
                        .foregroundColor(Color(red: 0.35, green: 0.36, blue: 0.47))
                }
                .padding(.top,40)
                .frame(width: 340, alignment: .leading)
                
                
                VStack(spacing:20){
                    ForEach(Total_Balance1Arry) { balance1 in
                        balance1
                    }
                }
            }
            
        }
        .frame(width: 414)
       
    }
}

#Preview {
    Set_Budget1_View()
}
