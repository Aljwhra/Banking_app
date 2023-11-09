//
//  Total_Balance2.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 09/11/2023.
//

import SwiftUI

struct Token_Bonus3: View {
    
    @State private var fill: CGFloat = 0.0
    
    var body: some View {
        VStack{
            Image("Group10")
                .overlay(
                    
                    HStack(spacing: 10){
                        
                        VStack(alignment: .leading, spacing: 15){
                            
                            Text("Buy Tokens")
                                .font(.custom("SpaceGrotesk-medium", size: 20))
                                .foregroundColor(.white)
                                .frame(width: 110, height: 25, alignment: .topLeading)
                            
                            Text("110 BPT")
                                .font(.custom("SpaceGrotesk-semibold", size: 26))
                                .foregroundColor(.white)
                                .frame(width: 100, height: 22, alignment: .leading)
                            
                            Text("Price: 0.002 USD")
                                .font(.custom("SpaceGrotesk-semibold", size: 13))
                                .kerning(0.14)
                                .foregroundColor(.white)
                                .frame(width: 113, height: 21, alignment: .topLeading)
                            
                        } .frame(width: 213)
                        
                        HStack{
                            
                            ZStack{
                                Circle()
                                    .stroke(Color.gray.opacity(0.1), style: StrokeStyle(lineWidth: 10))
                                
                                    .frame(width: 92, height: 90)
                                    .foregroundColor(.color2)
                                
                                
                                // Animation circle
                                Circle()
                                    .trim(from: 0, to: self.fill)
                                    .stroke(Color.white, style: StrokeStyle(lineWidth: 10)
                                            
                                    )
                                    .frame(width: 92, height: 90)
                                    .rotationEffect(.init(degrees: -40))
                                    .animation(Animation.linear(duration: 0.01))
                                
                                
                                
                                Text("\(Int(self.fill * 100.0))%")
                                    .foregroundColor(.white)
                                
                            }
                            
                            .onTapGesture {
                                
                                for x in 0...19{
                                    DispatchQueue.main.asyncAfter(deadline: .now()+TimeInterval(x/20)){
                                        self.fill += 0.01
                                    }
                                }
                            }
                            
                            
                        }
                    }
                    
                )
        }
    }
}

#Preview {
    Token_Bonus3()
}
