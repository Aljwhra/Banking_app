//
//  Interest_Payment .swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 09/11/2023.
//

import SwiftUI

struct Interest_Payment: View , Identifiable {
    var id = UUID()
    var imageName: String
    var titile: String
    var subtitile: String
    var backgroundColor: Color
    
    var body: some View {
        VStack(alignment: .leading){
            
            Image(imageName)
            .padding(.bottom,50)
            Text(titile)
              .font(.custom("SpaceGrotesk-semibold", size: 22))
              .foregroundColor(.white)
            
            Text(subtitile)
              .font(Font.custom("Space Grotesk", size: 16))
              .kerning(0.16)
              .foregroundColor(.white)
              
        }
        .background(
            Rectangle()
                .fill(backgroundColor)
              .frame(width: 163, height: 209)
              .cornerRadius(20)
              .shadow(color: Color(red: 0.6, green: 0.64, blue: 0.71).opacity(0.1), radius: 4.5, x: 0, y: 9)
        )
        .padding()
    }
}

#Preview {
    Interest_Payment(imageName: "interest1", titile: "25.40%", subtitile: "Loan", backgroundColor: .myyellow)
}
