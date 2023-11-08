//
//  OnboardingItems.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 06/11/2023.
//

import SwiftUI

struct OnboardingItems: View , Identifiable{
    
    var id = UUID() 
    var imageName: String
    var title: String
    var subtitle: String
   
    
    var body: some View {
        
        VStack{
            Image(imageName)
            .frame(height: 300)
            
            
            Text(title)
              .font(.custom("SpaceGrotesk-bold", size: 30))
              .multilineTextAlignment(.center)
              .frame(width: 321, height: 86, alignment: .center)
            
            
            Text(subtitle)
              .font(.custom("SpaceGrotesk-Regular", size: 14))
              .multilineTextAlignment(.center)
              .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13))
              .frame(width: 301, height: 40, alignment: .center)
            
            
        }
      
    }
}

#Preview {
    OnboardingItems(imageName: "Group1", title: "SET YOUR\nFINANCIAL GOALS", subtitle: "Your goals will help us to formulate the right\nrecommendations for success")
}
