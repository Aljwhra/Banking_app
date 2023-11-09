//
//  Token_Bonus.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 07/11/2023.
//

import SwiftUI

struct Token_Bonus1: View {
    
    @State private var fill: CGFloat = 0.0
    
    var body: some View {
        ZStack{
             
            Circle()
                .stroke(Color.myyellow.opacity(0.1), style: StrokeStyle(lineWidth: 10))
            
                .frame(width: 112, height: 113)
                .foregroundColor(.color2)
                .padding(.bottom,115)
            
            // Animation circle
            Circle()
                .trim(from: 0, to: self.fill)
                .stroke(Color.myyellow, style: StrokeStyle(lineWidth: 10)
                        
                )
                .frame(width: 110, height: 112)
                .rotationEffect(.init(degrees: -40))
                .animation(Animation.linear(duration: 0.01))
                .padding(.bottom,115)
            
            
            Text("\(Int(self.fill * 100.0))%")
                .foregroundColor(.white)
            
            
            
                .onTapGesture {
                    
                    for x in 0...19{
                        DispatchQueue.main.asyncAfter(deadline: .now()+TimeInterval(x/20)){
                            self.fill += 0.01
                        }
                    }
                }
                .padding(.bottom,115)
            
            
            
            VStack(alignment: .center, spacing: 10) {
                Text("Tokens to buy\nfor 13% ")
                    .font(.custom("SpaceGrotesk-medium", size: 13))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                
                Text("990BTN")
                    .font(
                        Font.custom("SpaceGrotesk-semibold", size: 20))
                
                    .foregroundColor(.myyellow)
                
                
            }.padding(.top,100)
            
            
            
            
        }
        
        .background(
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 163, height: 280)
                .background(.color2)
                .cornerRadius(15)
        )
        
        
    }
}

#Preview {
    Token_Bonus1()
}
