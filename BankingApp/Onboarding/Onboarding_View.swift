//
//  Onboarding_View.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 06/11/2023.
//

import SwiftUI

struct Onboarding_View: View {
    
    let onboardingItemsArry = [
        OnboardingItems(imageName: "Group1", title: "SET YOUR\nFINANCIAL GOALS", subtitle: "Your goals will help us to formulate the right\nrecommendations for success"),
        OnboardingItems(imageName: "Group2", title: "SET YOUR\nFINANCIAL GOALS", subtitle: "Your goals will help us to formulate the right\nrecommendations for success"),
        OnboardingItems(imageName: "Group3", title: "SET YOUR\nFINANCIAL GOALS", subtitle: "Your goals will help us to formulate the right\nrecommendations for success")
    ]
    
    
    @State var currentindex: Int = 0
    
    @State private var isSkip = false
    @State private var isNext = false
    @State private var isCreateAccount = false
    @State private var isSignIn = false
    
    
    var body: some View {
        VStack{
            TabView(selection: $currentindex){
                ForEach(onboardingItemsArry.indices,id: \.self) { items in
                    onboardingItemsArry[items]
                }
                
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .overlay(
                    
                    HStack(spacing: 2){
                        ForEach(onboardingItemsArry.indices, id: \.self){ items in
                            let isCurrentPage: Bool = currentindex == items
                            Circle()
                                .fill(isCurrentPage ? Color.mygreen : Color.gray.opacity(0.9))
                                .frame(width: isCurrentPage ? 15 : 15 ,height: 8)
                                .animation(.interactiveSpring(response: 0.5),value: isCurrentPage)
                            
                            
                        }
                    }.offset(y:270)
                    
                )
            
            
            if currentindex == 2 {
                HStack(spacing: 20){
                    
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        
                        Text("Create account")
                            .foregroundStyle(.color3)
                            .frame(width: 180, height: 56)
                            .background(Color(red: 0.88, green: 0.88, blue: 0.88))
                            .cornerRadius(65)
                        
                    })
                    .fullScreenCover(isPresented: $isCreateAccount){
                        
                    }
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        
                        HStack{
                            Text("Sign in ")
                            Image(systemName: "arrow.forward")
                                .font(.custom("SpaceGrotesk-medium", size: 18))
                            
                        }
                        .foregroundColor(.white)
                        .frame(width: 152, height: 56)
                        .background(Color.mygreen)
                        .cornerRadius(55)
                        
                    })
                    .fullScreenCover(isPresented: $isSignIn){
                        
                    }
                }
            } else{
                
                HStack(spacing: 135){
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Skip")
                            .font(.custom("SpaceGrotesk-medium", size: 18))
                            .foregroundStyle(.black)
                       
                    })
                    .fullScreenCover(isPresented: $isSkip){
                        
                    }
                    
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        
                        HStack{
                            Text("Next")
                            Image(systemName: "arrow.forward")
                                .font(.custom("SpaceGrotesk-medium", size: 18))
                            
                        }
                        .foregroundColor(.white)
                        .frame(width: 152, height: 56)
                        .background(Color.mygreen)
                        .cornerRadius(55)
                        
                    })
                    .fullScreenCover(isPresented: $isNext){
                        
                    }
                }
            }
        }
        
    }
}


#Preview {
    Onboarding_View()
}
