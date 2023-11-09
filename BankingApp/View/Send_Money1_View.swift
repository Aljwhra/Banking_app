//
//  Send_Money_View.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 08/11/2023.
//

import SwiftUI

struct Send_Money1_View: View {
    var body: some View {
        NavigationStack{

            VStack(spacing: 20){
                TextFields1()
                
                HStack{
                    Text("will send")
                        .font(Font.custom("Space Grotesk", size: 20))
                        .foregroundColor(.color1)
                }.padding(.bottom,50)
                
                Profile_Card1(imageName: "a1", userName: "Jastan Beber", titile: "Bank account number", iconName: "arrow.left.arrow.right", suptitile: "39020 0012")
                
                
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    
                    HStack{
                        Text("Send")
                        Image(systemName: "arrow.forward")
                            .font(.custom("SpaceGrotesk-medium", size: 18))
                        
                    }
                    .foregroundColor(.white)
                    .frame(width: 183, height: 60)
                    .background(.color2)
                    .cornerRadius(105)
                   
                    
                }).padding(.top,40)
                
                
            }
            
            .navigationTitle("Send Money")
            .navigationBarTitleDisplayMode(.inline) // Center the title
            .navigationBarItems(trailing:Button(action: {}) {Image("Group4")})
            .navigationBarItems(leading:Button(action: {}) {Image("align-left")})
        }
    }
}

#Preview {
    Send_Money1_View()
}

struct TextFields1: View {
    
    @State var Num = ""
    
    var body: some View {
        HStack{
            
            Text("980")
                .font(.custom("SpaceGrotesk-semibold", size: 34))
                .foregroundColor(.color3)
            
            Divider()
            TextField(".00", text: $Num )
                .keyboardType(.numberPad)
                .font(.custom("SpaceGrotesk-semibold", size: 34))
                .foregroundColor(Color.mygray)
            Text("USD")
                .font(.custom("SpaceGrotesk-semibold", size: 34))
                .foregroundColor(.color3)
            
            
            
        }.frame(width: 220, height: 58)
    }
}
