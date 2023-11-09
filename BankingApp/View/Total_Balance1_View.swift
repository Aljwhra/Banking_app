//
//  Total_Balance_View.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 09/11/2023.
//

import SwiftUI

struct Total_Balance1_View: View {
    
    let Total_Balance1Arry = [
        Total_Balance1(imageName: "PayPal", titile: "Paypal", suptitile:"Jun 10" , price: "+$343.00", backgroundColor: .blue, priceColor:.mygreen, priceBackgroundColor: .mygreen),
        Total_Balance1(imageName: "truck", titile: "Trasfort", suptitile:"Jun 10" , price: "-$233.00", backgroundColor: .myyellow, priceColor:.color2, priceBackgroundColor: .color2),
        Total_Balance1(imageName: "heart1", titile: "Madical", suptitile:"Jun 10" , price: "-$233.00", backgroundColor: .mygreen, priceColor:.color2, priceBackgroundColor: .color2)

    ]
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 40){
                    
                    Image("card4")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.top,20)
                    
                    VStack(spacing: 10){
                        Text("Total balance")
                            .font(.custom("SpaceGrotesk-semibold", size: 18))
                            .foregroundColor(.color1)
                        
                        Text("$7,455.00")
                            .font(.custom("SpaceGrotesk-bold", size: 36))
                            .foregroundColor(.color3)
                        
                    } .frame(width: 203, height: 35, alignment: .top)
                    
                    Buttons5()
                        .padding(.top,30)
                    
                    VStack(spacing:20){
                        ForEach(Total_Balance1Arry) { balance1 in
                            balance1
                        }
                    }
                    
                }
            }
            .navigationTitle("Total Balance")
            .navigationBarTitleDisplayMode(.inline) // Center the title
            .navigationBarItems(trailing:Button(action: {}) {Image("Group4")})
            .navigationBarItems(leading:Button(action: {}) {Image("align-left")})
        }
    }
}

#Preview {
    Total_Balance1_View()
}




struct Buttons5:View {
    var body: some View {
        HStack(spacing: 20){
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                
                
                Text("Flat")
                    .font(.custom("SpaceGrotesk-medium", size: 16))
                    .foregroundColor(.white)
                    .frame(width: 98, height: 40)
                    .frame(height: 40, alignment: .center)
                    .background(.mygreen)
                    .cornerRadius(10)
                    
            })
            
            
            
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                
                Text("Crypto")
                    
                    .font(.custom("SpaceGrotesk-medium", size: 16))
                    .foregroundColor(.color1)
                    .frame(width: 98, height: 40)
                    .frame(height: 40, alignment: .center)
                    .background(.mygray)
                    .cornerRadius(10)
                    
                    
            })
            
      
            
            
        }
    }
}
