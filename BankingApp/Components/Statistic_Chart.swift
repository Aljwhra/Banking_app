//
//  Statistic_Chart.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 07/11/2023.
//

import SwiftUI


struct Statistic_Chart: View {
    
    
    let  RecentTransactionsArry2 = [
        Recent_Transactions2(imageName: "mac", titile: "McDonald’s", suptitile: "Foods & Coffee", date: "Today", price: "- $43.50", backgroundColor: .yellow),
        Recent_Transactions2(imageName: "Uber", titile: "Uber", suptitile: "Ride & Food", date: "Today", price: "- $43.50", backgroundColor: .gray)
    ]
    
    
    
    var body: some View {
        VStack{
            ScrollView{
                HStack(spacing: 10){
                    Text("$455.00")
                        .font(.custom("SpaceGrotesk-semibold", size: 26))
                        .foregroundColor(.color3)
                    Spacer()
                    Text("Weekly")
                        .font(.custom("SpaceGrotesk-semibold", size: 16))
                        .foregroundColor(.color1)
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.color1)
                }.frame(width: 336, height: 40, alignment: .topLeading)
                .padding(.top,20)
                
                
           
                 
               
                 Image("Image")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 340)
                    
                
                
                
                
                HStack(spacing: 30){
                    
                    Text("Recent Transactions")
                        .font(.custom("SpaceGrotesk-semibold", size: 20))
                        .foregroundColor(.color3)
                        .frame(width: 292, height: 16, alignment: .leading)
                    
                    
                    Image(systemName: "chevron.down")
                    
                }.padding(.top,20)
                
                
                VStack(spacing: 19){
                    ForEach(RecentTransactionsArry2) { transactions in
                        transactions
                    }
                } .padding(.top,35)
                
                
            }
            .padding()
            .background(
                Rectangle()
                    .fill(.white)
                    .frame(width: 414, height: .infinity)
                    .cornerRadius(30)
                
            ).offset(y:100)
        }
    }
}

#Preview {
    Statistic_Chart()
}
