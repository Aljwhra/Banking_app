//
//  Dashboard_View.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 07/11/2023.
//

import SwiftUI

struct Dashboard_View: View {
    
    let  CardBalanceArry = [
        Card_Balance(titile: "Positions", price: "$2250.00"),
        Card_Balance(titile: "Cash", price: "$$450.00")
    
    ]
    
    
   let TokenBonus2Arry = [ 
    Token_Bonus2(titile: "Bonus received", price: "$22.42", backgroundColor: .myyellow),
    Token_Bonus2(titile: "Bonus received", price: "$22.42", backgroundColor: .mygreen)
   ]
    
    
    var body: some View {
        NavigationStack{
            
            ScrollView{
                
                VStack(spacing: 35){
                    
                    VStack(alignment: .leading , spacing: 9){
                        Text("Total Balance")
                            .font(.custom("SpaceGrotesk-medium", size: 20))
                            .foregroundColor(Color.color1)
                        
                        HStack{
                            Text("$5,733.00 ")
                                .font(.custom("SpaceGrotesk-semibold", size: 34))
                                .foregroundColor(Color.color3)
                            
                            Text("+4.50%")
                                .foregroundStyle(.white)
                                .frame(width: 68, height: 30)
                                .background(Color(red: 0.15, green: 0.68, blue: 0.38))
                                .cornerRadius(15)
                                .padding()
                        }
                    }
                    .frame(width: 300, height: 50, alignment: .topLeading)
                    .padding(.top,40)
                
                    
                    HStack(spacing: 55){
                        ForEach(CardBalanceArry) { balance in
                            balance
                        }
                    }.padding(.top,50)
                    
                    HStack(spacing: 15){
                        Text("Token Bonus")
                            .font(.custom("SpaceGrotesk-semibold", size: 18))
                            .foregroundColor(Color.color1)
                        
                        
                        
                        Text("Today")
                            .font(Font.custom("Space Grotesk", size: 11))
                            .foregroundColor(.white)
                            .padding()
                            .frame(height: 23)
                            .background(Color.mygreen)
                            .cornerRadius(6)
                        
                        
                    } .frame(width: 300, height: 40, alignment: .topLeading)
                    
                    HStack(spacing: 65){
                        
                        Token_Bonus1()
                        VStack(spacing:45){
                            ForEach(TokenBonus2Arry) { bonus2 in
                                bonus2
                            }
                        }
                    }
                    
                    Buttons()
                    
                    
                }
            }
            
            .navigationTitle("Dashboard")
            .navigationBarTitleDisplayMode(.inline) // Center the title
            .navigationBarItems(trailing:Button(action: {}) {Image("Group4")})
            .navigationBarItems(leading:Button(action: {}) {Image("align-left")})
        }
    }
}

#Preview {
    Dashboard_View()
}


struct Buttons: View {
    var body: some View {
        
        
        HStack(spacing: 15){
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                
                Text("Get Tokens")
                    .font(.custom("SpaceGrotesk-medium", size: 16))
                    .foregroundColor(.color2)
                    .frame(width: 163, height: 50)
                    .background(Color.color2.opacity(0.2))
                    .cornerRadius(15)
            })
            
            
            
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                
                Text("Borrow tokens")
                    .font(.custom("SpaceGrotesk-medium", size: 16))
                    .foregroundColor(.mygreen)
                    .frame(width: 163, height: 50)
                    .background(Color.mygreen.opacity(0.2))
                    .cornerRadius(15)
            })
            
        }
        

         
    }
}
