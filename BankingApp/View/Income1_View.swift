//
//  Income_View.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 08/11/2023.
//

import SwiftUI

struct Income1_View: View {
    var body: some View {
        NavigationStack{
           
            VStack(spacing: 80){
                 
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
                        
                    }.frame(width: 300, height: 40, alignment: .topLeading)
                    
                    
                    chart()
                    
                Profile_Card(imageName: "a1", userName: "Jastan Beber", titile: "Your Card Limit", iconName: "chevron.right", suptitile: "5.876 USD of 5.907")
                    
                    
                
            }
            
            
            
            .navigationTitle("Income")
            .navigationBarTitleDisplayMode(.inline) // Center the title
            .navigationBarItems(trailing:Button(action: {}) {Image("Group4")})
            .navigationBarItems(leading:Button(action: {}) {Image("align-left")})
        }
    }
}

#Preview {
    Income1_View()
}

struct chart: View {
    var body: some View {
        VStack{
            
            HStack(spacing: 20){
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    
                    
                    Text("Income")
                        .font(.custom("SpaceGrotesk-medium", size: 16))
                        .foregroundColor(.white)
                        . frame(width: 98, height: 40, alignment: .center)
                        .background(.mygreen)
                        .cornerRadius(10)
                })
                
                
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    
                    Text("Expense")
                    
                        .font(.custom("SpaceGrotesk-medium", size: 16))
                        .foregroundColor(.gray)
                        . frame(width: 98, height: 40, alignment: .center)
                        .background(.gray.opacity(0.2))
                        .cornerRadius(10)
                })
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    
                    Text("Saving")
                    
                        .font(.custom("SpaceGrotesk-medium", size: 16))
                        .foregroundColor(.gray)
                        . frame(width: 98, height: 40, alignment: .center)
                        .background(.gray.opacity(0.2))
                        .cornerRadius(10)
                })
                
                
            }.padding(.bottom,70)
            
            Image("Image")
                .resizable()
                .frame(width: 350, height: 300)
            
        }
        .background(
            
            Rectangle()
                .fill(.mygray)
                .frame(width: 400, height: 450)
                .cornerRadius(20)
        )
    }
}
