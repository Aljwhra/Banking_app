//
//  Income_History_View.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 08/11/2023.
//

import SwiftUI

struct Income_History_View: View {
    
    let  Transactions_CardArry = [
        Transactions_Card(imageName: "send2", titile: "Salary", suptitile: "May 10.40PM", price: "+ $233", priceColoe: .color3, backgroundColorImage: .orange, backgroundColor: .mygray, shadowbackgroundColor: .clear),
        Transactions_Card(imageName: "refresh", titile: "EURO to USD ", suptitile: "May 12.40AM", price: "+ $120", priceColoe: .mygreen, backgroundColorImage: .mygreen, backgroundColor: .white, shadowbackgroundColor: .black),
        Transactions_Card(imageName: "send3", titile: "Foodpanda", suptitile: "May 10.40PM", price: "+ $233", priceColoe: .color3, backgroundColorImage: .purple, backgroundColor: .mygray, shadowbackgroundColor: .clear),
        Transactions_Card(imageName: "gift", titile: "Gift", suptitile: "May 10.40PM", price: "+ $233", priceColoe: .color3, backgroundColorImage: .mygreen, backgroundColor: .mygray, shadowbackgroundColor: .clear)
    ]
    
    
    let  Transactions_CardArry2 = [
        Transactions_Card(imageName: "refresh2", titile: "EURO to USD ", suptitile: "May 10.40PM", price: "+ $233", priceColoe: .color3, backgroundColorImage: .orange, backgroundColor: .mygray, shadowbackgroundColor: .clear),
        Transactions_Card(imageName: "send3", titile: "Foodpanda", suptitile: "May 10.40PM", price: "+ $233", priceColoe: .color3, backgroundColorImage: .purple, backgroundColor: .mygray, shadowbackgroundColor: .clear),
        Transactions_Card(imageName: "gift", titile: "Gift", suptitile: "May 10.40PM", price: "+ $233", priceColoe: .color3, backgroundColorImage: .mygreen, backgroundColor: .mygray, shadowbackgroundColor: .clear)
    ]
    
    
    
    var body: some View {
        
        
        
        NavigationStack{
            ScrollView{
                
                VStack(spacing: 40){
                    
                    VStack(alignment: .leading,spacing: 10){
                        
                        Text("Total Income")
                            .font(.custom("SpaceGrotesk-medium", size: 20))
                            .foregroundColor(.color1)
                        
                        HStack{
                            Text("$5,733.")
                                .font(.custom("SpaceGrotesk-semibold", size: 34))
                                .foregroundColor(.color3)
                            Text("00")
                                .font(.custom("SpaceGrotesk-semibold", size: 34))
                                .foregroundColor(.mygray)
                            Text("USD")
                                .font(.custom("SpaceGrotesk-semibold", size: 34))
                                .foregroundColor(.color3)
                            
                        }
                        
                    }.frame(width: 350, alignment: .topLeading)
                        .padding(.top,40)
                    HStack(spacing: 15){
                        Text("Transactions")
                            .font(.custom("SpaceGrotesk-semibold", size: 18))
                            .foregroundColor(.color3)
                        
                        Text("New")
                            .font(Font.custom("Space Grotesk", size: 10))
                            .foregroundColor(.white)
                            .frame(width: 40, height: 20)
                            .background(.mygreen)
                            .cornerRadius(6)
                        Spacer()
                        Image(systemName: "chevron.right")
                        
                    }.frame(width: 350, alignment: .topLeading)
                    
                    
                    
                    
                    VStack(spacing: 35){
                        ForEach(Transactions_CardArry) { card in
                            card
                        }
                    }
                    
                    
                    HStack{
                        Text("09 April, 2021")
                            .font(.custom("SpaceGrotesk-semibold", size: 18))
                            .foregroundColor(Color.color3)
                            
                        
                    }.frame(width: 350, alignment: .topLeading)
                    
                    
                    
                    VStack(spacing: 35){
                        
                        ForEach(Transactions_CardArry2) { card in
                            card
                        }
                        
                    }
                    
                    
                    
                    
                }.frame(maxWidth: .infinity)
                
                
                
                
                
            }
            
            
            
            .navigationTitle("Income History")
            .navigationBarTitleDisplayMode(.inline) // Center the title
            .navigationBarItems(trailing:Button(action: {}) {Image("Group4")})
            .navigationBarItems(leading:Button(action: {}) {Image("align-left")})
        }
    }
}

#Preview {
    Income_History_View()
}
