//
//  Total_Balance2_View.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 09/11/2023.
//

import SwiftUI

struct Total_Balance2_View: View {
    var body: some View {
        NavigationStack{
            VStack(spacing: 50){
                Token_Bonus3()
                
                Bonus_rate()
                
                keybord()
                .padding(.top,10)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    
                    Text("Buy for 23.000 USD")
                        .font(.custom("SpaceGrotesk-medium", size: 18))
                        .foregroundColor(.white)
                        .frame(width: 314, height: 56)
                        .background(Color.color3)
                        .cornerRadius(15)
                    
                })
                .padding(.top,10)
                
            }
            
            
            .navigationTitle("Total Balance")
            .navigationBarTitleDisplayMode(.inline) // Center the title
            .navigationBarItems(trailing:Button(action: {}) {Image("Group4")})
            .navigationBarItems(leading:Button(action: {}) {Image("align-left")})
        }
    }
}

#Preview {
    Total_Balance2_View()
}


struct Bonus_rate: View {
    var body: some View {
        
        VStack(alignment: .leading){
            HStack{
                
                Text("Bonus rate")
                  .font(Font.custom("Space Grotesk", size: 16))
                  .foregroundColor(.white)
                
            }
            
            HStack{
                Spacer()
                Text("544DPT")
                  .font(.custom("SpaceGrotesk-semibold", size: 18))
                  .foregroundColor(.white)
            }.frame(width: 250)
            
            HStack{
                Text("Tokens to buy for 13%")
                  .font(
                    Font.custom("SpaceGrotesk-semibold", size: 18))
                  .foregroundColor(.white)
            }
        }
        .background(
       RoundedRectangle(cornerRadius: 15)
            .fill(.mygreen)
        .frame(width: 354, height: 98))
       
    }
}


struct keybord: View {
    var body: some View {
        VStack(spacing: 30){
            
            HStack(spacing: 105){
                Text("1")
                Text("2")
                Text("3")
                
            } .font(.custom("SpaceGrotesk-bold", size: 26))
            .foregroundColor(.color3)
            
            
            HStack(spacing: 105){
                Text("4")
                Text("5")
                Text("6")
                
            } .font(.custom("SpaceGrotesk-bold", size: 26))
            .foregroundColor(.color3)
            
            HStack(spacing: 105){
                Text("7")
                Text("8")
                Text("9")
                
            } .font(.custom("SpaceGrotesk-bold", size: 26))
            .foregroundColor(.color3)
            
            
            HStack(spacing: 103){
                Text(".  ")
                Text("0")
               Image(systemName: "arrow.left")
                    .font(.title3).bold()
                
            } .font(.custom("SpaceGrotesk-bold", size: 26))
            .foregroundColor(.color3)
            
        }
    }
}
