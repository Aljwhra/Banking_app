//
//  Chart2_View.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 09/11/2023.
//

import SwiftUI

struct Chart2_View: View {
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    Profile_Card2(imageName: "a1", titile: "You earned", numTitile: "390.20 USD")
                        .padding(.top,35)
                    
                    
                    HStack{
                        Text("Transactions")
                            .font(.custom("SpaceGrotesk-semibold", size: 18))
                            .foregroundColor(.color1)
                        
                    }.frame(width: 356, height: 40, alignment: .topLeading)
                        .padding(.top,30)
                    
                    ScrollView(.horizontal){
                        HStack(spacing:0){
                            Image("card6")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 160)
                            Image("card7")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 160)
                            Image("card8")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 160)
                        }.padding(.leading)
                        
                        
                    }
                    
                    Image("Image9")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 354, height: 331)
                }
            }
            
            .navigationTitle("Chart")
            .navigationBarTitleDisplayMode(.inline) // Center the title
            .navigationBarItems(trailing:Button(action: {}) {Image("Group4")})
            .navigationBarItems(leading:Button(action: {}) {Image("align-left")})
        }
    }
}

#Preview {
    Chart2_View()
}
