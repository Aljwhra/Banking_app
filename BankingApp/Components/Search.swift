//
//  Search.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 08/11/2023.
//

import SwiftUI

struct Search: View {
    
    @State var Search = ""
    
    var body: some View {
        HStack{
            
               
            TextField("Search here", text: $Search )
                .font(Font.custom("Inter", size: 12))
                .foregroundColor(Color.mygray)
             
            
            Image(systemName: "magnifyingglass")
            .foregroundStyle(.white)
              .frame(width: 48, height: 49)
              .background(Color.color2)
              .cornerRadius(10)
              .shadow(color: Color(red: 0.12, green: 0.13, blue: 0.4).opacity(0.06), radius: 29.46428, x: 19.64286, y: 19.64286)
              
        }.frame(width: 300, height: 58)
      
         
        .background(
            RoundedRectangle(cornerRadius: 15)
            
              .stroke(Color(red: 0.95, green: 0.95, blue: 0.95), lineWidth: 1)
              .background(.white)
              .frame(width: 344, height: 58)
          .shadow(color: Color(red: 0.42, green: 0.49, blue: 0.57).opacity(0.08), radius: 30, x: 7.43, y: 49.03))
    }
}

#Preview {
    Search()
}
