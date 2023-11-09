//
//  Deposits_View.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 09/11/2023.
//

import SwiftUI

struct Deposits_View: View {
    
    let Select_frequencyArry = [
        Select_frequency_num(textNum: "3", textNumBackground: .color1, backgroundCircle: .white, shadowBackground: .clear),
        Select_frequency_num(textNum: "6", textNumBackground: .white, backgroundCircle: .black, shadowBackground: .gray),
        Select_frequency_num(textNum: "9", textNumBackground: .color1, backgroundCircle: .white, shadowBackground: .clear),
        Select_frequency_num(textNum: "12", textNumBackground: .color1, backgroundCircle: .white, shadowBackground: .clear)
    ]
    
    
    let Interest_PaymentArry = [
        Interest_Payment(imageName: "interest1", titile: "25.40%", subtitile: "Loan", backgroundColor: .myyellow),
        Interest_Payment(imageName: "columns", titile: "25.40%", subtitile: "Loan", backgroundColor: .mygreen),
        Interest_Payment(imageName: "columns", titile: "25.40%", subtitile: "Loan", backgroundColor: .color2)
    ]
    
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 30){
                    Enter_Amount_Box()
                        .padding(.top,70)
                        .padding(.bottom,30)
                    
                    
                    HStack{
                        Text("Select frequency")
                          .font(.custom("SpaceGrotesk-semibold", size: 20))
                          .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13))
                          
                    }
                    .frame(width: 340, height: 50, alignment: .leading)
                    
                    HStack(spacing: 70){
                        ForEach(Select_frequencyArry) { select_frequency_num in
                            select_frequency_num
                        }
                    }.frame(height: 50)
                    
                    
                    HStack{
                        Text("Interest Payment ")
                          .font(.custom("SpaceGrotesk-semibold", size: 20))
                          .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13))
                          
                    }
                    .frame(width: 340, height: 20, alignment: .leading)
                    
                    
                    ScrollView(.horizontal){
                        
                        HStack(spacing: 45){
                            ForEach(Interest_PaymentArry){ Interest in
                                Interest
                            }.padding(.leading,19)
                        }
                        .padding()
                        .padding(.horizontal,10)
                    }
                    
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        
                        Text("Calculate")
                            .font(.custom("SpaceGrotesk-medium", size: 18))
                            .foregroundColor(.white)
                            .frame(width: 314, height: 56)
                            .background(Color.color3)
                            .cornerRadius(15)
                        
                    })
                    .padding(.top,10)
                    
                }
            }
            
            
            .navigationTitle("Deposits")
            .navigationBarTitleDisplayMode(.inline) // Center the title
            .navigationBarItems(trailing:Button(action: {}) {Image("Group4")})
            .navigationBarItems(leading:Button(action: {}) {Image("align-left")})
        }
    }
}

#Preview {
    Deposits_View()
}


struct Enter_Amount_Box: View {
    var body: some View {
        VStack{
            HStack{
                Text("Enter Amount")
                  .font(.custom("SpaceGrotesk-semibold", size: 18))
                 
                Spacer()
                Text("USD")
                  .font(.custom("SpaceGrotesk-semibold", size: 16))
                Image(systemName: "chevron.down")
              
                  
                
            } .foregroundColor(.white)
                .frame(width: 320, height: 30, alignment: .topLeading)
            
            
            HStack{
                
                Text("3.980.")
                    .foregroundColor(.white)
                 Text("00")
                    .foregroundColor(.white.opacity(0.4))
                Text("USD")
                    .foregroundColor(.white)
                  
            }
            .font(.custom("SpaceGrotesk-bold", size: 32))
            .frame(width: 320, height: 30, alignment: .topLeading)
            
            
            
            
        }
        .background(
            Rectangle()
            .fill(.mygreen)
            .frame(width: 354, height: 146)
            .cornerRadius(15)
            .shadow(color: Color(red: 0.46, green: 0.64, blue: 0.62).opacity(0.1), radius: 10, x: 0, y: 8)
        )
    }
}
