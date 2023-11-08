//
//  Your_Cards .swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 08/11/2023.
//

import SwiftUI

struct Your_Cards: View {
    var body: some View {
        VStack{
            HStack(spacing: 30){
                Text("Your Cards ")
                
                Image(systemName: "chevron.down")
                  
            }.foregroundColor(.white)
            
            ScrollView(.horizontal){
                HStack(spacing: 1){
                    Image("sCard1")

                    Image("sCard2")
                }
                
            } .frame(width: 150)
            
        }
        .background(
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 163, height: 197)
          .background(.color2)
          .cornerRadius(15))
    }
}

#Preview {
    Your_Cards()
}
