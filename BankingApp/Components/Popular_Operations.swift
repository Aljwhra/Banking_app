//
//  Popular_Operations.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 09/11/2023.
//

import SwiftUI

struct Popular_Operations: View ,Identifiable{
    
    var id = UUID()
    var imgeName: String
    var backgroundImage: Color
    var title: String
    var titleColor: Color
    var backgroundCard: Color
    var strokeColor: Color
    
    
    var body: some View {
        VStack{
            
            Image(imgeName)
                .frame(width: 38, height: 38)
                .background(backgroundImage.opacity(0.1))
                .cornerRadius(30)
            
            Text(title)
              .font(
                Font.custom("Space Grotesk", size: 11)
                  .weight(.medium)
              )
              .multilineTextAlignment(.center)
              .foregroundColor(titleColor)
              .frame(width: 42, height: 12, alignment: .center)
            
        }
        .background(
            Rectangle()
                .fill(backgroundCard)
              .frame(width: 85, height: 90)
              .cornerRadius(15)
              .overlay(
              RoundedRectangle(cornerRadius: 15)
              .inset(by: 0.35)
              .stroke(Color(strokeColor), lineWidth: 1)

              )
              
        
        )
    }
}

#Preview {
    Popular_Operations(imgeName: "file-text", backgroundImage: .white, title: "Bill", titleColor: .white, backgroundCard: .mygreen, strokeColor: .clear)
}
