//
//  Send_Money2_View.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 09/11/2023.
//

import SwiftUI

struct Send_Money2_View: View {
    var body: some View {
        NavigationStack{
            
            VStack(spacing: 40){
                Profile_Card1(imageName: "a1", userName: "Jastan Beber", titile: "Bank account number", iconName: "arrow.left.arrow.right", suptitile: "39020 0012")
                
                
                SendBox()
                
                ContentBox()
                    .padding(.top,30)
                    .padding(.bottom,20)
                
                Buttons4()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    
                    Text("Confirm")
                        .font(.custom("SpaceGrotesk-medium", size: 18))
                        .foregroundColor(.white)
                        .frame(width: 314, height: 56)
                        .background(Color.mygreen)
                        .cornerRadius(15)
                    
                })
                .padding(.top,80)
                
               
                
            }
            
            .navigationTitle("Send Money")
            .navigationBarTitleDisplayMode(.inline) // Center the title
            .navigationBarItems(trailing:Button(action: {}) {Image("Group4")})
            .navigationBarItems(leading:Button(action: {}) {Image("align-left")})
            
            
        }
    }
}

#Preview {
    Send_Money2_View()
}


struct SendBox: View {
    var body: some View {
        VStack(alignment: .leading){
            
            Text("Send")
              .font(.custom("SpaceGrotesk-semibold", size: 18))
              .foregroundColor(.white)
            
            
            Text("980.00 USD")
              .font(.custom("SpaceGrotesk-semibold", size: 26))
              .foregroundColor(.white)
              .frame(width: 161, height: 38, alignment: .topLeading)
            
            
        }.background(
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 354, height: 100)
              .background(Color(red: 0.9, green: 0.75, blue: 0.56))
              .cornerRadius(15)
              .shadow(color: Color(red: 0.65, green: 0.65, blue: 0.65).opacity(0.2), radius: 10, x: 0, y: 14)
        )
    }
}


struct ContentBox: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 15){
            Text("Content")
              .font(.custom("SpaceGrotesk-semibold", size: 18))
              .foregroundColor(.color3)
            
            Text("The rule of thirds states that an image is most pleasing when its subjects or regions are")
              .font(Font.custom("Space Grotesk", size: 16))
              .foregroundColor(Color(red: 0.35, green: 0.36, blue: 0.47))
              .frame(width: 309, alignment: .topLeading)
            
        }.background(
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 354, height: 170)
              .background(Color(red: 0.98, green: 0.98, blue: 0.98))
              .cornerRadius(12)
        )
    }
}

struct Buttons4: View {
    var body: some View {
        HStack{
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                
                HStack{
                    Text("Quick Transfer")
                    Image(systemName: "checkmark")
                    
                } .foregroundColor(.white)
                    .frame(width: 203, height: 56)
                    .background(.color2)
                    .cornerRadius(15)

                
            })
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                
              
                    Text("Normal")
                    .foregroundColor(.white)
                    .frame(width: 137, height: 56)
                    .background(.myyellow)
                    .cornerRadius(15)

                
            })
            
            
        }
    }
}
