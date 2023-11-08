//
//  Managerment2_View.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 08/11/2023.
//

import SwiftUI

struct Managerment2_View: View {
    
    
  let Total_Income2Arry = [
    Total_Income2(image:"person", price: "1.650.00", titile: "Peoples", backgroundColor: .mygreen),
    Total_Income2(image:"photo", price: "1.650.00", titile: "Peoples", backgroundColor: .myyellow)
  ]
    
    
    var body: some View {
        
        NavigationStack{
            ScrollView{
                VStack{
                    VStack{
                        HStack{
                            Text("Earn")
                                .font(.custom("SpaceGrotesk-semibold", size: 30))
                                .foregroundColor(.color3)
                            
                            Text("0.30%")
                                .font(.custom("SpaceGrotesk-semibold", size: 30))
                                .foregroundColor(.color2)
                            Text("APY")
                                .font(.custom("SpaceGrotesk-semibold", size: 30))
                                .foregroundColor(.color3)
                        }
                        
                        Text("Your cash is moved to banks in your program that pay you 0.30% every month")
                            .font(Font.custom("Space Grotesk", size: 16))
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.35, green: 0.36, blue: 0.47))
                            .frame(width: 343, height: 41, alignment: .center)
                        
                    } .padding(.top,40)
                    
                    
                    Image("Image6")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.top,15)
                    
                    
                    
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
                    
                    
                    HStack(spacing: 100){
                        ForEach(Total_Income2Arry) { income2 in
                            income2
                        }
                    }.padding(.top,30)
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
    Managerment2_View()
}
