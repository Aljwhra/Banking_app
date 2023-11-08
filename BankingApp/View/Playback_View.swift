//
//  Playback_View.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 07/11/2023.
//

import SwiftUI

struct Playback_View: View {
    
    let smallCardArry = [
        Bank_Small_Card(smallCard: "smallCard2"),
        Bank_Small_Card(smallCard: "smallCard1"),
        Bank_Small_Card(smallCard: "smallCard3")
    ]
    
  let  RecentTransactionsArry = [ 
    Recent_Transactions1(imageName: "arrow-left1", titile: "Health", suptitile: "Pharmacy", price: "+$343", backgroundColor: .mygreen, priceColoe: .mygreen, date: "Jun 10"),
    Recent_Transactions1(imageName: "arrow-left2", titile: "Trasfer", suptitile: "From the card ", price: "-$233", backgroundColor: .color2, priceColoe: .color2, date: "Jun 20"),
    Recent_Transactions1(imageName: "arrow-left1", titile: "Health", suptitile: "Pharmacy", price: "+$343", backgroundColor: .mygreen, priceColoe: .mygreen, date: "Jun 10"),
    Recent_Transactions1(imageName: "arrow-left2", titile: "Trasfer", suptitile: "From the card ", price: "-$233", backgroundColor: .color2, priceColoe: .color2, date: "Jun 20")
  ]
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    
                    Text("My Cards")
                        .font(.custom("SpaceGrotesk-semibold", size: 34))
                        .foregroundColor(.color3)
                        .frame(width: 350, height: 40, alignment: .topLeading)
                        .padding(.top,35)
                    HStack{
                        
                        dashButton()
                        
                        ScrollView(.horizontal){
                            HStack{
                                ForEach(smallCardArry) { card in
                                    card
                                }
                            }
                        }
                    } .padding()
                    
                    
                    HStack(spacing: 30){
                        
                        Text("Recent Transactions")
                            .font(.custom("SpaceGrotesk-semibold", size: 20))
                            .foregroundColor(.color3)
                            .frame(width: 292, height: 16, alignment: .leading)
                        
                        
                        Image(systemName: "chevron.right")
                        
                    }.padding(.top)
                    
                    VStack(spacing: 19){
                        ForEach(RecentTransactionsArry) { transactions in
                            transactions
                        }
                    } .padding(.top,20)
                    
                }
            }
            .navigationTitle("Playback")
            .navigationBarTitleDisplayMode(.inline) // Center the title
            .navigationBarItems(trailing:Button(action: {}) {Image("Group4")})
            .navigationBarItems(leading:Button(action: {}) {Image("align-left")})
        }
    }
}

#Preview {
    Playback_View()
}


struct dashButton:View {
    var body: some View {
        
        
        Text("+  Add Card")
          .font(Font.custom("Space Grotesk", size: 18))
          .foregroundColor(Color.color1)
          .rotationEffect(Angle(degrees: -90))
       
           .background(
            RoundedRectangle(cornerRadius: 15)
            .stroke(Color.color1, style: StrokeStyle(lineWidth: 1, dash: [3, 3]))
            .frame(width: 50, height: 167))
    }
}
