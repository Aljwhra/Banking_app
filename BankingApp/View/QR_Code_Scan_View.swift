//
//  QR_Code_Scan_View.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 08/11/2023.
//

import SwiftUI

struct QR_Code_Scan_View: View {
    
    let  QR_CardsArry = [
         QR_Cards(imageName: "clipboard", titile: "Bill", backgroundCard: .mygray.opacity(0.6)),
         QR_Cards(imageName: "clipboard", titile: "Expense", backgroundCard: .mygray.opacity(0.6)),
         QR_Cards(imageName: "QR1", titile: "QR", backgroundCard: .myyellow)
        ]
    var body: some View {
        
        NavigationStack{
            
            VStack{
                
                VStack{
                    Image("Image3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:390, height: 520)
                        .padding(.top,-70)
                }
                
                HStack(spacing: 60){
                    
                ForEach(QR_CardsArry) { cards in
                    cards
                }
                
            }
            .background(
                Rectangle()
                  .fill(.mygreen)
                  .frame(width: 400, height: 220)
                  .cornerRadius(30)
                  
            )
            .offset(y:80)
                
                
                
            }
            
            .navigationTitle("QR Code Scan")
            .navigationBarTitleDisplayMode(.inline) // Center the title
            .navigationBarItems(trailing:Button(action: {}) {Image("Group4")})
            .navigationBarItems(leading:Button(action: {}) {Image("align-left")})
        }
    }
}

#Preview {
    QR_Code_Scan_View()
}
