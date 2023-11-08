//
//  Total_Income.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 08/11/2023.
//

import SwiftUI

struct Total_Income1: View {
    
    @State private var fill: CGFloat = 0.0
    
    var body: some View {
        
        HStack(spacing: 75){
            
            
            
            VStack(spacing: 20){
                Image("Image5")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100)
                
                Text("Weekly\nActivity")
                  .font(Font.custom("Space Grotesk", size: 19))
                  .foregroundColor(.white)
                  .padding(.bottom,40)
            }.background(
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 163, height: 280)
                    .background(.mygreen)
                    .cornerRadius(15)
            )
            
            
            
            
            ZStack{
                
                
                Circle()
                    .stroke(Color.myyellow.opacity(0.1), style: StrokeStyle(lineWidth: 10))
                
                    .frame(width: 100, height: 100)
                    .foregroundColor(.color2)
                    .padding(.bottom,115)
                
                // Animation circle
                Circle()
                    .trim(from: 0, to: self.fill)
                    .stroke(Color.myyellow, style: StrokeStyle(lineWidth: 10)
                            
                    )
                    .frame(width: 100, height: 100)
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
                    Text("Payment")
                        .font(.custom("SpaceGrotesk-medium", size: 13))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                    
                    Text("Due In")
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
}

#Preview {
    Total_Income1()
}
