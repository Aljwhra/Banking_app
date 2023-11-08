//
//  Welcome_View.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 06/11/2023.
//

import SwiftUI

struct Welcome_View: View {
    
    @State private var isActive = false
    
    var body: some View {
        VStack{
            Text("Welcome to")
                .foregroundStyle(.color3)
                .font(.custom("SpaceGrotesk-Bold", size: 28))
              .multilineTextAlignment(.center)
             
            Image("logo")
                .frame(width: 234, height: 162)
            
            
            Text("AEB")
                .foregroundStyle(.color3)
              .font(.custom("SpaceGrotesk-Bold", size: 37.3125))
              .frame(width: 76, height: 32, alignment: .center)
            
            
            Text("App thet will help you to properly manage yout finances")
              .font(Font.custom("Space Grotesk", size: 16))
              .multilineTextAlignment(.center)
              .foregroundColor(Color(red: 0.35, green: 0.36, blue: 0.47))
              .frame(width: 296, height: 47, alignment: .center)
            
            
            HStack{
                Image("CHARACTER1")
                    .frame(width: 130, height: 203)
                Image("CHARACTER2")
                    .frame(width: 190, height: 245)


                
            }
            .padding(.bottom)
            
            Button(action: {
                isActive = true
            }, label: {
                Text("Get’s Started")
                  .font(.custom("SpaceGrotesk-semibold", size: 18))
                  .foregroundColor(.white)
                  .frame(width: 332, height: 61)
                  .background(.color3)
                  .cornerRadius(65)
            })
            .fullScreenCover(isPresented: $isActive){
               Onboarding_View()
            }
            
            
        }
    }
}

#Preview {
    Welcome_View()
}
