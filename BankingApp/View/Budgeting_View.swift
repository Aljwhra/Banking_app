//
//  Budgeting_View.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 09/11/2023.
//

import SwiftUI

struct Budgeting_View: View {
    
    let Total_Balance1Arry = [
        Total_Balance1(imageName: "Mastercard", titile: "Master card", suptitile:"Jun 10" , price: "+$343.00", backgroundColor: .myyellow, priceColor:.mygreen, priceBackgroundColor: .mygreen),
        Total_Balance1(imageName: "heart1", titile: "Madical", suptitile:"Jun 10" , price: "-$233.00", backgroundColor: .mygreen, priceColor:.color2, priceBackgroundColor: .color2),
        Total_Balance1(imageName: "truck", titile: "Trasfort", suptitile:"Jun 10" , price: "-$233.00", backgroundColor: .myyellow, priceColor:.color2, priceBackgroundColor: .color2)
        

    ]
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    Chart_card()
                        .padding(.top,30)
                    Box3()
                        .padding(.top,30)
                    
                    HStack{
                        Text("Expenses")
                            .font(
                                Font.custom("Space Grotesk", size: 20)
                                    .weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13))
                            .frame(width: 308, height: 16, alignment: .leading)
                    }
                    .padding(.top,40)
                    
                    VStack(spacing:20){
                        ForEach(Total_Balance1Arry) { balance1 in
                            balance1
                        }
                    }
                    .padding(.top,30)
                }
            }
            
            .navigationTitle("Budgeting")
            .navigationBarTitleDisplayMode(.inline) // Center the title
            .navigationBarItems(trailing:Button(action: {}) {Image("Group4")})
            .navigationBarItems(leading:Button(action: {}) {Image("plus-circle")})
        }
    }
}

#Preview {
    Budgeting_View()
}


struct Box3: View {
    var body: some View {
        HStack{
            Image("revenue1")
                .frame(width: 40, height: 40)
                .background(.white)
                .cornerRadius(30)
            
            VStack(alignment: .leading){
                Text("Investment")
                  .font(
                    Font.custom("Space Grotesk", size: 22)
                      .weight(.semibold)
                  )
                  .foregroundColor(.white)
                  .frame(width: 130, height: 15, alignment: .leading)
                Text("Investing Asistent.")
                  .font(Font.custom("Space Grotesk", size: 14))
                  .kerning(0.14)
                  .foregroundColor(.white)
                  .frame(width: 166, height: 12, alignment: .leading)
            }
            
            Text("Open")
              .font(
                Font.custom("Space Grotesk", size: 16)
                  .weight(.semibold)
              )
              .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13))
              .background(
                Rectangle()
                .foregroundColor(.clear)
                .frame(width: 105, height: 42)
                .background(.white.opacity(0.5))

                .cornerRadius(10)
              )
            
            
        }.background(
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 354, height: 84)
              .background(Color(red: 0.9, green: 0.75, blue: 0.56))
              .cornerRadius(15)
        
        )
    }
}
