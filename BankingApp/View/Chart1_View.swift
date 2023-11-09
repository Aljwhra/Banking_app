//
//  Chart_View.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 08/11/2023.
//

import SwiftUI

struct Chart1_View: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    
                    Hader_Chart()
                        .padding(.top,180)
                    
                    Buttons3()
                        .padding()
                    Image("Image8")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
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
    Chart1_View()
}



struct Buttons3:View {
    var body: some View {
        HStack(spacing: 20){
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                
                
                Text("March")
                    .font(.custom("SpaceGrotesk-medium", size: 16))
                    .foregroundColor(.gray)
                    . frame(width: 60, height: 40, alignment: .center)
                
                    
            })
            
            
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                
                Text("April")
                    .font(.custom("SpaceGrotesk-medium", size: 16))
                    .foregroundColor(.gray)
                    . frame(width: 60, height: 40, alignment: .center)
                
                    
                   
            })
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                
                Text("June")
                    .font(.custom("SpaceGrotesk-medium", size: 16))
                    .foregroundColor(.white)
                    .padding(24)
                    .frame(height: 40, alignment: .center)
                    .background(.mygreen)
                    .cornerRadius(10)

                    
                    
            })
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                
                Text("May")
                
                    .font(.custom("SpaceGrotesk-medium", size: 16))
                    .foregroundColor(.gray)
                    . frame(width: 60, height: 40, alignment: .center)
                    
            })
            
            
        }
    }
}
