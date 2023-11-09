//
//  Set_Budget2_View.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 09/11/2023.
//

import SwiftUI

struct Set_Budget2_View: View {
    var body: some View {
        NavigationStack{
            VStack{
                VStack{
                    Text("Total Balance")
                      .font(
                        Font.custom("Space Grotesk", size: 18)
                          .weight(.medium)
                      )
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color(red: 0.35, green: 0.36, blue: 0.47))
                    Text("$15,733 ")
                      .font(
                        Font.custom("Space Grotesk", size: 44)
                          .weight(.semibold)
                      )
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13))
                }
                
                Text("January 8, Tuesday")
                  .font(
                    Font.custom("Space Grotesk", size: 18)
                      .weight(.medium)
                  )
                  .foregroundColor(Color(red: 0.35, green: 0.36, blue: 0.47))
                  .frame(width: 350, height: 22, alignment: .topLeading)
                
                HStack(spacing: -25){
                    Image("card11")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 210)
                    Image("card12")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 210)
                }
                
                
                HStack{
                    Text("Favourites")
                      .font(
                        Font.custom("Space Grotesk", size: 18)
                          .weight(.semibold)
                      )
                      .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13))
                } .frame(width: 350, height: 22, alignment: .topLeading)
                    .padding()
                
                
                
                HStack(spacing: -7){
                    Image("1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                    
                    
                    
                    Image("2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                    
                    
                    Image("3")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                    
                    
                    
                    
                    
                    Image("plus-circle1")
                       
                    .background(
                    Circle()
                    .foregroundColor(.clear)
                    .frame(width: 60, height: 60)
                    .background(.white)

                    .cornerRadius(30)
                   
                    .overlay(
                    RoundedRectangle(cornerRadius: 30)
                   
                    .stroke(Color(red: 0.86, green: 0.86, blue: 0.86), style: StrokeStyle(lineWidth: 1, dash: [4, 4]))

                    ))
                        
                        

                        
                }.frame(width: 350, height: 40, alignment: .topLeading)
                    .padding(.bottom,60)
                
               Image("Image13")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 442,height: 178)
                    
                
            }
            .navigationTitle("Set Budget")
            .navigationBarTitleDisplayMode(.inline) // Center the title
        }
    }
}

#Preview {
    Set_Budget2_View()
}
