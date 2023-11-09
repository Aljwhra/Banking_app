//
//  Income2_View.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 09/11/2023.
//

import SwiftUI

struct Income2_View: View {
    
    
    let Total_Balance1Arry = [
        Total_Balance1(imageName: "Mastercard", titile: "Master card", suptitile:"Jun 10" , price: "+$343.00", backgroundColor: .myyellow, priceColor:.mygreen, priceBackgroundColor: .mygreen),
        Total_Balance1(imageName: "heart1", titile: "Madical", suptitile:"Jun 10" , price: "-$233.00", backgroundColor: .mygreen, priceColor:.color2, priceBackgroundColor: .color2),
        Total_Balance1(imageName: "truck", titile: "Trasfort", suptitile:"Jun 10" , price: "-$233.00", backgroundColor: .myyellow, priceColor:.color2, priceBackgroundColor: .color2)
        

    ]
    
    var body: some View {
        
        NavigationStack{
            ScrollView{
                VStack(spacing: 50){
                    VStack(alignment: .leading,spacing: 10){
                        
                        Text("Balance")
                            .font(.custom("SpaceGrotesk-medium", size: 20))
                            .foregroundColor(.color1)
                        
                        
                        HStack{
                            Text("$5,733.")
                                .font(.custom("SpaceGrotesk-semibold", size: 34))
                                .foregroundColor(.color3)
                            Text("50")
                                .font(.custom("SpaceGrotesk-semibold", size: 34))
                                .foregroundColor(.mygray)
                            Text("USD")
                                .font(.custom("SpaceGrotesk-semibold", size: 34))
                                .foregroundColor(.color3)
                            
                        }
                        
                    }.frame(width: 300, height: 40, alignment: .topLeading)
                        .padding(.top,20)
                    
                    Image("card5")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 350)
                        .padding(.top,20)
                    
                    VStack(spacing:20){
                        ForEach(Total_Balance1Arry) { balance1 in
                            balance1
                        }
                    }
                    
                    
                }
            }
                .navigationTitle("Total Income")
                .navigationBarTitleDisplayMode(.inline) // Center the title
                .navigationBarItems(trailing:Button(action: {}) {Image("Group4")})
                .navigationBarItems(leading:Button(action: {}) {Image("align-left")})
        }
    }
}

#Preview {
    Income2_View()
}
