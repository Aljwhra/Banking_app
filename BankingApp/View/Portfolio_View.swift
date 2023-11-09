//
//  Portfolio_View.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 09/11/2023.
//

import SwiftUI

struct Portfolio_View: View {
    
    let  Transactions_CardArry2 = [
        Transactions_Card(imageName: "refresh2", titile: "EURO to USD ", suptitile: "May 10.40PM", price: "+ $233", priceColoe: .color3, backgroundColorImage: .orange, backgroundColor: .mygray, shadowbackgroundColor: .clear),
        Transactions_Card(imageName: "arrow-left2", titile: "Mutual fund plus", suptitile: "May 10.40PM", price: "- 6.34%", priceColoe: .color2, backgroundColorImage: .color2, backgroundColor: .white, shadowbackgroundColor: .gray),
        Transactions_Card(imageName: "gift", titile: "Gift", suptitile: "May 10.40PM", price: "+ $233", priceColoe: .color3, backgroundColorImage: .mygreen, backgroundColor: .mygray, shadowbackgroundColor: .clear)
    ]
    
    var body: some View {
        NavigationStack{
            ScrollView{
                
                VStack{
                    
                    Profile_Card2(imageName: "a1", titile: "You earned", numTitile: "390.20 USD")
                        .padding(.top,30)
                    
                    
                    HStack{
                        Text("Transactions")
                            .font(
                                Font.custom("Space Grotesk", size: 18)
                                    .weight(.medium)
                            )
                            .foregroundColor(Color(red: 0.35, green: 0.36, blue: 0.47))
                        
                    }.frame(width: 350, height: 30, alignment: .leading)
                        .padding(.top,20)
                    
                    VStack{
                        Image("Image11")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 400,height: 200)
                    }
                    .padding(.top,20)
                    
                    Buttons6()
                        .padding(.bottom)
                    
                    
                    VStack(spacing: 35){
                        
                        ForEach(Transactions_CardArry2) { card in
                            card
                        }
                        
                    }.padding(.top,20)
                    
                }
            }
            
            .navigationTitle("Portfolio")
            .navigationBarTitleDisplayMode(.inline) // Center the title
            .navigationBarItems(trailing:Button(action: {}) {Image("Group4")})
            .navigationBarItems(leading:Button(action: {}) {Image("align-left")})
        }
    }
}

#Preview {
    Portfolio_View()
}

struct Buttons6: View {
    var body: some View {
        HStack{
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                
                
                Text("Funds")
                    .font(.custom("SpaceGrotesk-medium", size: 16))
                    .foregroundColor(.white)
                    .frame(width: 98, height: 40)
                    .frame(height: 40, alignment: .center)
                    .background(.mygreen)
                    .cornerRadius(10)
                    
            })
            
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                
                
                Text("Bond")
                    .font(.custom("SpaceGrotesk-medium", size: 16))
                    .foregroundColor(.color1)
                    .frame(width: 98, height: 40)
                    .frame(height: 40, alignment: .center)
                    .background(Color(red: 0.97, green: 0.97, blue: 0.97))

                    .cornerRadius(10)
                    
            })
            
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                
                
                Text("Stock")
                    .font(.custom("SpaceGrotesk-medium", size: 16))
                    .foregroundColor(.color1)
                    .frame(width: 98, height: 40)
                    .frame(height: 40, alignment: .center)
                    .background(Color(red: 0.97, green: 0.97, blue: 0.97))

                    .cornerRadius(10)
                    
            })
            
        }
    }
}
