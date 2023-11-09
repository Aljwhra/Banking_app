//
//  Chart3_View.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 09/11/2023.
//

import SwiftUI

struct Chart3_View: View {
    var body: some View {
        NavigationStack{
          
            VStack(spacing: 50){
                
                VStack{
                    Image("Image10")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300, height: 245)
                } .padding(.top,10)
                
                    Top_up_balance()
                    .padding(.bottom,30)
                    Box1()
                    .padding(.bottom,30)
                    Box2()
                    .padding(.bottom,30)
                }
            
            .navigationTitle("Chart")
            .navigationBarTitleDisplayMode(.inline) // Center the title
            .navigationBarItems(trailing:Button(action: {}) {Image("Group4")})
            .navigationBarItems(leading:Button(action: {}) {Image("align-left")})
        }
    }
}

#Preview {
    Chart3_View()
}


struct Top_up_balance: View {
    var body: some View {
        VStack{
            Text("Top up balance")
                .font(
                    Font.custom("Space Grotesk", size: 18)
                        .weight(.semibold)
                )
                .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13))
                .frame(width: 166, height: 15, alignment: .leading)
            
            
            Image("plus-circle")
                .frame(width: 34, height: 10)
                .padding(.leading,260)
            
            Text("via payonner & bank")
                .font(Font.custom("Space Grotesk", size: 14))
                .foregroundColor(Color(red: 0.35, green: 0.36, blue: 0.47))
                .frame(width: 166, height: 12, alignment: .leading)
            
        }.background(
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 354, height: 84)
                .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                .cornerRadius(15)
            
        )
    }
}

struct Box1: View {
    var body: some View {
        HStack(spacing: 120){
            
            VStack{
                
                Image("repeat")
                    .frame(width: 60, height: 60)
                    .background(.white.opacity(0.2))
                    .cornerRadius(50)
                
                Text("Transfer")
                    .font(
                        Font.custom("Space Grotesk", size: 17)
                            .weight(.semibold)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(width: 71, height: 15, alignment: .center)
                
            }.background(
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 169, height: 175)
                    .background(Color(red: 0.9, green: 0.75, blue: 0.56))
                    .cornerRadius(15)
                    .shadow(color: Color(red: 0.9, green: 0.75, blue: 0.56).opacity(0.4), radius: 25, x: 0, y: 20)
                
            )
            
            VStack{
                Image("log-out")
                    .frame(width: 60, height: 60)
                    .background(Color(red: 0.92, green: 0.94, blue: 0.94))
                    .cornerRadius(50)
                
                Text("Request")
                    .font(
                        Font.custom("Space Grotesk", size: 17)
                            .weight(.semibold)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.34, green: 0.7, blue: 0.67))
                    .frame(width: 71, height: 15, alignment: .center)
                
                
                
            }
            .background(
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 170, height: 175)
                    .background(.white)
                    .cornerRadius(15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .inset(by: 0.35)
                            .stroke(Color(red: 0.88, green: 0.88, blue: 0.88), lineWidth: 1)
                    )
                
            )
            
            
        }
    }
}

struct Box2: View {
    var body: some View {
        VStack(alignment: .leading){
            
            Text("Connected Friends ")
                .font(
                    Font.custom("Space Grotesk", size: 18)
                        .weight(.medium)
                )
                .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13))
                .frame(width: 210, height: 15, alignment: .leading)
            
            Text("Your Friends")
                .font(
                    Font.custom("Space Grotesk", size: 16)
                        .weight(.medium)
                )
                .kerning(0.16)
                .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13))
            
            HStack(spacing: 25){
                Text("You have 14+ friends")
                    .font(Font.custom("Space Grotesk", size: 14))
                    .kerning(0.14)
                    .foregroundColor(Color(red: 0.35, green: 0.36, blue: 0.47))
                
                
                
                
                HStack(spacing: -6.5){
                    Image("1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40, height: 40)
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                    
                    
                    
                    Image("2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40, height: 40)
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                    
                    
                    Image("3")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40, height: 40)
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                    
                    
                    
                    
                    
                    Text("+10")
                        .font(.custom("SpaceGrotesk-bold", size: 12))
                        .foregroundColor(.white)
                    
                        .background(
                            
                            Circle()
                                .fill(.mygreen)
                                .frame(width: 40, height: 45)
                        )
                }
            }
        }
        .background(
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 354, height: 122)
                .background(.white)
                .cornerRadius(15)
                .shadow(color: Color(red: 0.46, green: 0.64, blue: 0.62).opacity(0.1), radius: 10, x: 0, y: 8)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .inset(by: 0.5)
                        .stroke(Color(red: 0.86, green: 0.86, blue: 0.86), style: StrokeStyle(lineWidth: 1, dash: [4, 4]))
                )
        )
    }
}
