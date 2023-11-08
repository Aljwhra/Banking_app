//
//  Services_View.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 06/11/2023.
//

import SwiftUI

struct Services_View: View {
    
    let BankCardArry = [
        Bank_Card(imageCard: "card1"),
        Bank_Card(imageCard: "card2"),
        Bank_Card(imageCard: "card3")
        
    ]
    
    
    let  CardSettingsArry = [
        Card_Settings(icons: "command", titile: "Contactless payment", backgroundIcon: .mygreen),
        Card_Settings(icons: "dollar-sign", titile: "Contactless payment", backgroundIcon: .myyellow),
        Card_Settings(icons: "credit-card", titile: "Contactless payment", backgroundIcon: .myBlue)
    ]
    
    
    var body: some View {
        NavigationStack{
            ScrollView{
                
                VStack{
                    
                    VStack(alignment: .leading, spacing: 10){
                        
                        
                        Text("My Cards")
                            .font(.custom("SpaceGrotesk-semibold", size: 30))
                            .foregroundColor(.color3)
                        
                        
                        Text("2 pysical card, 1 virtual card")
                            .font(Font.custom("Space Grotesk", size: 14))
                            .foregroundColor(.color1)
                        
                        
                    }.frame(width:345, height: 120, alignment: .leading)
                    
                    
                    HStack{
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            
                            Text("Physical Card")
                                .font(.custom("SpaceGrotesk-medium", size: 14))
                            
                                .foregroundColor(.white)
                                .frame(width: 147, height: 40, alignment: .center)
                                .background(.color2)
                                .cornerRadius(10)
                            
                        })
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            
                            Text("Virtusl Card")
                                .font(.custom("SpaceGrotesk-medium", size: 14))
                                .foregroundColor(.color1)
                                .frame(width: 147, height: 40, alignment: .center)
                                .background(.mygray)
                                .cornerRadius(10)
                            
                        })
                        
                        
                    }.frame(width:345, height: 40, alignment: .leading)
                    
                    
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(BankCardArry) { card in
                                card
                            }
                        }.padding(.horizontal)
                    }.padding(.top,16)
                    
                    
                    HStack{
                        Text("Card")
                            .font(.custom("SpaceGrotesk-bold", size: 18))
                            .foregroundColor(.color3)
                        
                        Text("Settings")
                            .font(Font.custom("Space Grotesk", size: 17))
                        
                            .foregroundColor(.color1)
                        
                        
                    }  .frame(width:345, height: 60, alignment: .leading)
                    
                    
                    VStack(spacing: 20){
                        
                        ForEach(CardSettingsArry) { settings in
                            settings
                        }
                    }
                    
                    
                    
                }
            }
            .navigationTitle("Services")
            .navigationBarTitleDisplayMode(.inline) // Center the title
            .navigationBarItems(trailing:Button(action: {})
                                {Image("Group4")
                               
            })
            .navigationBarItems(leading:Button(action: {}) {Image("align-left")})
        }
    }
}

#Preview {
    Services_View()
}
