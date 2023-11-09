//
//  My_Budget_View.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 08/11/2023.
//

import SwiftUI

struct My_Budget_View: View {
    
    
    let  RecentTransactionsArry = [
        Recent_Transactions1(imageName: "arrow-left1", titile: "Health", suptitile: "Pharmacy", price: "+$343", backgroundColor: .mygreen, priceColoe: .mygreen, date: "Jun 10"),
        Recent_Transactions1(imageName: "arrow-left2", titile: "Trasfer", suptitile: "From the card ", price: "-$233", backgroundColor: .color2, priceColoe: .color2, date: "Jun 20"),
        Recent_Transactions1(imageName: "arrow-left1", titile: "Health", suptitile: "Pharmacy", price: "+$343", backgroundColor: .mygreen, priceColoe: .mygreen, date: "Jun 10"),
        Recent_Transactions1(imageName: "arrow-left2", titile: "Trasfer", suptitile: "From the card ", price: "-$233", backgroundColor: .color2, priceColoe: .color2, date: "Jun 20"),
        Recent_Transactions1(imageName: "arrow-left2", titile: "Trasfer", suptitile: "From the card ", price: "-$233", backgroundColor: .color2, priceColoe: .color2, date: "Jun 20"),
        Recent_Transactions1(imageName: "arrow-left2", titile: "Trasfer", suptitile: "From the card ", price: "-$233", backgroundColor: .color2, priceColoe: .color2, date: "Jun 20")
    ]
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    
                    
                    Image("Image7")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400, height: 300)
                        .padding(.bottom,-40)
                    
                    HStack(spacing: 30){
                        
                        Text("Transactions")
                            .font(.custom("SpaceGrotesk-semibold", size: 20))
                            .foregroundColor(.color3)
                            .frame(width: 340, height: 20, alignment: .leading)
                        
                    }
                    
                    VStack(spacing: 19){
                        ForEach(RecentTransactionsArry) { transactions in
                            transactions
                        }
                    } .padding(.top,20)
                    
                }
            }
            .navigationTitle("My Budget")
            .navigationBarTitleDisplayMode(.inline) // Center the title
            .navigationBarItems(trailing:Button(action: {}) {Image("Group4")})
            .navigationBarItems(leading:Button(action: {}) {Image("align-left")})
        }
        
        
    }
}


#Preview {
    My_Budget_View()
}
