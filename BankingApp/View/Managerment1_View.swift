//
//  Managerment_View.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 08/11/2023.
//

import SwiftUI

struct Managerment1_View: View {
    var body: some View {
        NavigationStack{
            VStack{
                
                ScrollView{
                    VStack(alignment: .leading , spacing: 9){
                        Text("Total Spending")
                            .font(.custom("SpaceGrotesk-medium", size: 20))
                            .foregroundColor(Color.color1)
                        
                        HStack{
                            Text("$153.30")
                                .font(.custom("SpaceGrotesk-semibold", size: 34))
                                .foregroundColor(Color.color3)
                            
                            Text("12%")
                                .foregroundStyle(.white)
                                .frame(width: 68, height: 30)
                                .background(.color2)
                                .cornerRadius(15)
                                .padding()
                        }
                    }
                    .frame(width: 340, height: 50, alignment: .topLeading)
                    .padding(.top,40)
                    
                    
                    HStack{
                        Buttons2()
                    }.frame(width: 340,height: 150)
                    
                    Image("Image4")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .padding(.top,-30)
                    
                    HStack{
                        
                        Text("Total Income")
                        .font(.custom("SpaceGrotesk-semibold", size: 18))
                            .foregroundColor(Color.color3)
                        
                        Text("This week")
                        .font(Font.custom("Space Grotesk", size: 14))
                         .foregroundStyle(.white)
                         .frame(width: 75, height: 25)
                          .background(.mygreen)
                          .cornerRadius(5)
                          .padding()
                            
                    }.frame(width: 340, height: 50, alignment: .topLeading)
                    
                    VStack{
                        Total_Income1()
                    }.padding(.top,40)
                }
                
            }
            
            .navigationTitle("Managerment")
            .navigationBarTitleDisplayMode(.inline) // Center the title
            .navigationBarItems(trailing:Button(action: {}) {Image("Group4")})
            .navigationBarItems(leading:Button(action: {}) {Image("align-left")})
        }
    }
}

#Preview {
    Managerment1_View()
}


struct Buttons2:View {
    var body: some View {
        HStack(spacing: 20){
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                
                
                Text("Main")
                    .font(.custom("SpaceGrotesk-medium", size: 16))
                    .foregroundColor(.white)
                    .padding(24)
                    .frame(height: 40, alignment: .center)
                    .background(.mygreen)
                    .cornerRadius(10)
            })
            
            
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                
                Text("Weekly")
                
                    .font(.custom("SpaceGrotesk-medium", size: 16))
                    .foregroundColor(.gray)
                    . frame(width: 60, height: 40, alignment: .center)
                   
            })
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                
                Text("Montly")
                
                    .font(.custom("SpaceGrotesk-medium", size: 16))
                    .foregroundColor(.gray)
                    . frame(width: 60, height: 40, alignment: .center)
                    
            })
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                
                Text("Yearly")
                
                    .font(.custom("SpaceGrotesk-medium", size: 16))
                    .foregroundColor(.gray)
                    . frame(width: 60, height: 40, alignment: .center)
                    
            })
            
            
        }
    }
}



