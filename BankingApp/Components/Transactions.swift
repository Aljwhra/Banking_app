//
//  Transactions.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 06/11/2023.
//

import SwiftUI

struct Transactions: View {
    

    
    var body: some View {
     
            HStack(spacing: 0){
                Image("1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 62, height: 63)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                
                Image("Ellipse2")
                    .offset(x:-20, y:24)

                Image("2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 62, height: 63)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                Image("Ellipse1")
                    .offset(x:-20, y:24)

                Image("3")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 62, height: 63)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                Image("Ellipse2")
                    .offset(x:-20, y:24)
                
                
                ZStack{
                    Circle()
                        .fill(.black.opacity(0.3))
                        .frame(width: 62, height: 63)
                    Text("5 +")
                        .foregroundStyle(.white)
                        .bold()
                }.padding(0)
             
                .background(
                Image("1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 62, height: 63)
                    .clipShape(RoundedRectangle(cornerRadius: 50)))
                    
                   
                    
                
                Circle()
                    .fill(.gray.opacity(0.3))
                    .frame(width: 70, height: 65)
                    .background(
                        Image("More")
                    ).padding(.horizontal,3)
                
                
            }.padding(0)
            
        
    }
}

#Preview {
    Transactions()
}
