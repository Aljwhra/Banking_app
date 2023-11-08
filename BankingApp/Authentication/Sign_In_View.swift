//
//  Sign_In_View.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 06/11/2023.
//

import SwiftUI

struct Sign_In_View: View {
    
    @State private var isSignIn = false
    
    var body: some View {
        
        VStack(spacing: 30){
            Text("Welcome Back 👋🏼")
              .font(.custom("SpaceGrotesk-semibold", size: 30))
            
            
            Text("I am so happy to see. You can contiue to login for manage your finance")
              .font(Font.custom("Space Grotesk", size: 15))
              .multilineTextAlignment(.center)
              .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13))
              .frame(width: 317, height: 40, alignment: .center)
            
            TextFields2()
            
            
            Text("Forgot password ?")
              .font(Font.custom("Overpass", size: 13))
              .foregroundColor(Color(red: 0.32, green: 0.35, blue: 0.44))
              .frame(width: 317, height: 20, alignment: .leading)
            
            
            
            VStack(spacing:20){
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    
                    Text("Sign In")
                        .font(.custom("SpaceGrotesk-medium", size: 18))
                        .foregroundColor(.white)
                        .frame(width: 327, height: 54)
                        .background(Color.mygreen)
                        .cornerRadius(50)
                    
                })
                .fullScreenCover(isPresented: $isSignIn){
                    
                }.padding(.bottom)
                
                Text("Enable Face Lock or Touch Lock for Quick Sign in")
                  .font(Font.custom("Space Grotesk", size: 14))
                  .multilineTextAlignment(.center)
                  .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.6))
                  .frame(width: 255, height: 47, alignment: .center)
                
                
            }.padding(.top,30)
            
            
        }
    }
}

#Preview {
    Sign_In_View()
}



struct TextFields2:View {
    
    @State private var email = ""
    @State private var password = "12345"
    
    var body: some View {
        VStack(spacing: 25){
            
            HStack(spacing:15){
                
                Image(systemName: "person.fill")
                    .foregroundStyle(.myBlue)
                    .frame(width: 35, height: 35)
                    .background(Color(red: 0.9, green: 0.91, blue: 0.98))
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                
                VStack(alignment: .leading){
                    Text("Email Address")
                      .font(Font.custom("Space Grotesk", size: 10))
                      .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.6))
                    
                    TextField("jonecooper@gmail.com", text: $email)
                      .font(.custom("SpaceGrotesk-medium", size: 14))
                      .foregroundColor(Color(red: 0.03, green: 0.07, blue: 0.2))
                    
                    Divider()
                        .frame(width: 243, height: 0.5)
                        .background(Color(red: 0.86, green: 0.86, blue: 0.86))
                    
                }
            }.frame(width: 325, height: 50, alignment: .center)
               
                
            HStack(spacing:15){
                Image("padlock")
                    .foregroundStyle(.myBlue)
                    .frame(width: 35, height: 35)
                    .background(Color(red: 1, green: 0.96, blue: 0.91))
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                
                VStack(alignment: .leading){
                    Text("Password")
                      .font(Font.custom("Space Grotesk", size: 10))
                      .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.6))
                    
                     SecureField("", text: $password)
                      .font(.custom("SpaceGrotesk-medium", size: 14))
                      .foregroundColor(Color(red: 0.03, green: 0.07, blue: 0.2))
                    
                    
                    Divider()
                        .frame(width: 243, height: 0.5)
                        .background(Color(red: 0.86, green: 0.86, blue: 0.86))
                    
                }
                Image("eye-off")
                    .offset(x:-35)
              
                
            }.frame(width: 301, height: 50, alignment: .center)
            
            
            
           
            
        }
    }
}
