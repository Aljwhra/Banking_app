//
//  Home_View.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 06/11/2023.
//

import SwiftUI

struct Home_View: View {
    
    let TransactionsHistoryArry = [
        Transactions_history(imageName: "send", titile: "McDonalds", suptitile:"May 10.40PM" , price: "- $233", backgroundColor: .mygreen, priceColoe: .color2),
        Transactions_history(imageName: "send", titile: "McDonalds", suptitile:"May 10.40PM" , price: "- $233", backgroundColor: .myyellow, priceColoe: .color1)
    ]
    
    var body: some View {
        NavigationStack{
            
            ScrollView{
                
                VStack(spacing: 30){
                    Chart_card()
                        .padding(.top,20)
                    
                    HStack(spacing:80){
                        Image("bar-chart")
                            .frame(width: 50, height: 50)
                            .background(Color.red.opacity(0.2))
                            .cornerRadius(10)
                        
                        Image("Group5")
                        
                        Image("copy")
                            .frame(width: 50, height: 50)
                            .background(Color.mygreen.opacity(0.1))
                            .cornerRadius(10)
                        
                    }.padding(.top,10)
                    
                    
                    VStack(alignment: .leading){
                        Text("Total balance")
                            .font(.custom("SpaceGrotesk-semibold", size: 22))
                            .foregroundColor(.color1)
                        
                        Text("$ 13.455, 23")
                            .font(.custom("SpaceGrotesk-semibold", size: 30))
                        
                        
                    }.frame(width: 353, height: 60, alignment: .topLeading)
                    
                    VStack{
                        
                        Text("Transactions")
                            .font(.custom("SpaceGrotesk-semibold", size: 18))
                            .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13))
                            .frame(width: 353, height: 30, alignment: .topLeading)
                        
                        ScrollView(.horizontal){
                            Transactions()
                        }.padding(.horizontal)
                    }
                    
                   
                    VStack(spacing: 15){
                        HStack(spacing: 70){
                            Text("Transactions history")
                                .font(.custom("SpaceGrotesk-semibold", size: 18))
                                .frame(width: 253, alignment: .topLeading)
                            
                            Image(systemName: "chevron.right")
                        }
                        
                        ForEach(TransactionsHistoryArry) { transactions_history in
                            transactions_history
                        }
                    }
                }
            }
            
            .navigationTitle("Welcome Ashik!")
            .navigationBarTitleDisplayMode(.inline) // Center the title
            .navigationBarItems(trailing:Button(action: {}) {Image("Group4")})
            .navigationBarItems(leading:Button(action: {}) {Image("align-left")})
            
            
            
        }
    }
}

#Preview {
    Home_View()
}
