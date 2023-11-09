//
//  Congratulations.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 09/11/2023.
//

import SwiftUI

struct Congratulations_View: View {
    var body: some View {
        NavigationStack{
            VStack{
                
                Image("pig")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 340, height: 240)
                    .padding(.bottom,30)
                
                Text("Saving 650 USD")
                  .font(.custom("SpaceGrotesk-bold", size: 40))
                  .foregroundColor(.mygreen)
                
                VStack{
                    
                    HStack{
                        
                        Text("Congratulations! You managed to save $500 this month")
                          .font(.custom("SpaceGrotesk-bold", size: 18))
                    
                    }
                    .foregroundColor(.color3)
                    .multilineTextAlignment(.center)
                    .frame(width: 315, height: 50, alignment: .center)
                    .font(.custom("SpaceGrotesk-bold", size: 16))
                 
                } .padding(.bottom,40)
                
                
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    
                    Text("My Achievements")
                        .font(.custom("SpaceGrotesk-medium", size: 18))
                        .foregroundColor(.white)
                        .frame(width: 314, height: 56)
                        .background(Color.mygreen)
                        .cornerRadius(15)
                    
                })
                
            }
            
            
            .navigationTitle("Congratulations")
            .navigationBarTitleDisplayMode(.inline) // Center the title
         
        }
        
    }
}

#Preview {
    Congratulations_View()
}
