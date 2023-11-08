//
//  Create_Account_View.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 06/11/2023.
//

import SwiftUI

struct Create_Account_View: View {
    
    
   
   
    @State private var isCreateAccount = false
    
    var body: some View {
        
        VStack(spacing: 30){
            
            Text("Create an account")
              .font(.custom("SpaceGrotesk-semibold", size: 34))
            
            Text("Create an account so you can manage your personal finances")
              .font(.custom("SpaceGrotesk", size: 16))
              .multilineTextAlignment(.center)
              .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13))
              .frame(width: 301, alignment: .center)
              .padding(.bottom)
            
           
            TextFields()

           
            
            VStack(spacing:20){
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    
                    Text("Creat an account")
                        .font(.custom("SpaceGrotesk-medium", size: 18))
                        .foregroundColor(.white)
                        .frame(width: 327, height: 54)
                        .background(Color.mygreen)
                        .cornerRadius(50)
                    
                })
                .fullScreenCover(isPresented: $isCreateAccount){
                    
                }
                
                Text("Or continue with social account")
                  .font(.custom("SpaceGrotesk", size: 13))
                  .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.6))
                
            }.padding(.top,25)
            
            
            HStack(spacing: 20){
                
                VStack(spacing: 20){
                    Image("apple")
                        .background(RoundedRectangle(cornerRadius: 30)
                            .stroke(Color(red: 0.82, green: 0.82, blue: 0.82), lineWidth: 0.5)
                            .frame(width: 40, height: 40)
                        )
                   
                    Text("Apple")
                      .font(Font.custom("Space Grotesk", size: 13))
                      
                   
                   
                }
                
                VStack(spacing: 20){
                    Image("google")
                        .background(RoundedRectangle(cornerRadius: 30)
                            .stroke(Color(red: 0.82, green: 0.82, blue: 0.82), lineWidth: 0.5)
                            .frame(width: 40, height: 40)
                        )
                   
                    Text("Google")
                      .font(Font.custom("Space Grotesk", size: 13))
                      
                   
                   
                }
                
                VStack(spacing: 20){
                    Image("twitter")
                        .background(RoundedRectangle(cornerRadius: 30)
                            .stroke(Color(red: 0.82, green: 0.82, blue: 0.82), lineWidth: 0.5)
                            .frame(width: 40, height: 40)
                        )
                   
                    Text("Twitter")
                      .font(Font.custom("Space Grotesk", size: 13))
                      
                   
                   
                }
                
            }.padding(.top,20)
            
        }
    }
}

#Preview {
    Create_Account_View()
}

//MARK: - Text Field
struct TextFields :View {
    
    @State private var email = ""
    @State private var password = "12345"
    @State  private var phone = ""
    
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
            
            
            
            HStack(spacing:15){
                Image(systemName: "phone.fill")
                    .foregroundStyle(.mygreen)
                    .frame(width: 35, height: 35)
                    .background(Color(red: 0.91, green: 0.95, blue: 0.94))
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                
                VStack(alignment: .leading){
                    Text("Phone")
                      .font(Font.custom("Space Grotesk", size: 10))
                      .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.6))
                    
                    TextField("+909 99 765 543 ", text: $phone)
                      .font(.custom("SpaceGrotesk-medium", size: 14))
                      .foregroundColor(Color(red: 0.03, green: 0.07, blue: 0.2))
                    
                    
                    Divider()
                        .frame(width: 243, height: 0.5)
                        .background(Color(red: 0.86, green: 0.86, blue: 0.86))
                    
                }
                Image("check-circle")
                    .offset(x:-35)
              
                
            }.frame(width: 301, height: 50, alignment: .center)
            
        }
    }
}


