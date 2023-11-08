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
                
                
                
                HStack{
                    
                    VStack{
                        HStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.mygray)
                                .frame(width: 30, height: 133)
                            
                        }
                        Text("Sat")
                            .font(Font.custom("Space Grotesk", size: 14))
                        
                            .foregroundColor(Color.color3)
                        
                    }
                    
                    VStack{
                        HStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.mygreen)
                                .frame(width: 30, height: 82)
                            
                        }
                        Text("Sun")
                            .font(Font.custom("Space Grotesk", size: 14))
                    }
                    
                    VStack{
                        HStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.mygray)
                                .frame(width: 30, height: 191)
                            
                        }
                        Text("Mon")
                            .font(Font.custom("Space Grotesk", size: 14))
                    }
                    
                    VStack{
                        HStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.color2)
                                .frame(width: 30, height: 235)
                            
                        }
                        Text("Tues")
                            .font(Font.custom("Space Grotesk", size: 14))
                    }
                    
                    VStack{
                        HStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.mygray)
                                .frame(width: 30, height: 117)
                            
                        }
                        Text("Wed")
                            .font(Font.custom("Space Grotesk", size: 14))
                    }
                    
                    VStack{
                        HStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.mygray)
                                .frame(width: 30, height: 170)
                            
                        }
                        Text("Thu")
                            .font(Font.custom("Space Grotesk", size: 14))
                    }
                }.padding(.top,30)
                
                
                
                
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
                    .foregroundColor(.clear)
                    .frame(width: 414, height: .infinity)
                    .background(.white)
                    .cornerRadius(30)
                
            ).offset(y:100)
        }
    }
}

#Preview {
    Statistic_Chart()
}
