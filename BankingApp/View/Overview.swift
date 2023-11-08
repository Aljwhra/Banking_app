//
//  Overview.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 08/11/2023.
//

import SwiftUI

struct Overview: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing:35){
                    
                    
                    VStack(alignment: .leading , spacing: 10){
                        Text("Hey Ashik!")
                            .font(.custom("SpaceGrotesk-medium", size: 30))
                            .foregroundColor(Color.color1)
                        
                        Text("What will you do today?")
                            .font(Font.custom("Space Grotesk", size: 16))
                            .foregroundColor(.gray)
                        
                    }.frame(width: 300, height: 40, alignment: .topLeading)
                        .padding(.top,30)
                    
                    Search()

                    Image("Dashboard_chart")

                    
                    HStack(spacing: 50){
                        Client()
                        Your_Cards()
                        
                    }.padding(.leading,25)
                }
            }
            .navigationTitle("Overview")
            .navigationBarTitleDisplayMode(.inline) // Center the title
            .navigationBarItems(trailing:Button(action: {}) {Image("Group4")})
            .navigationBarItems(leading:Button(action: {}) {Image("align-left")})
        }
    }
}

#Preview {
    Overview()
}
