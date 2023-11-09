//
//  Chart4_View.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 09/11/2023.
//

import SwiftUI

struct Chart4_View: View {
    
    let  Popular_OperationsArry = [
        Popular_Operations(imgeName: "file-text", backgroundImage: .white, title: "Bill", titleColor: .white, backgroundCard: .mygreen, strokeColor: .clear),
        Popular_Operations(imgeName: "coffee", backgroundImage: .myyellow, title: "Drink", titleColor: .color1, backgroundCard: .white, strokeColor: .myyellow),
        Popular_Operations(imgeName: "gift2", backgroundImage: .blue, title: "Gift", titleColor: .color1, backgroundCard: .white, strokeColor: .blue),
        Popular_Operations(imgeName: "wifi", backgroundImage: .color2, title: "Internet", titleColor: .color1, backgroundCard: .white, strokeColor: .color2),
        Popular_Operations(imgeName: "gift2", backgroundImage: .blue, title: "Gift", titleColor: .color1, backgroundCard: .white, strokeColor: .blue)
    ]
    
    
    
    let  Transactions_CardArry2 = [
        Transactions_Card(imageName: "arrow-left1", titile: "Health", suptitile: "Card...32223", price: "+ $233", priceColoe: .mygreen, backgroundColorImage: .mygreen, backgroundColor: .mygray, shadowbackgroundColor: .clear),
        Transactions_Card(imageName: "arrow-left2", titile: "Trasfer", suptitile: "Card... 2003", price: "+ $233", priceColoe: .color2, backgroundColorImage: .color2, backgroundColor: .white, shadowbackgroundColor: .gray),
        Transactions_Card(imageName: "arrow-left1", titile: "Health", suptitile: "May 10.40PM", price: "+ $233", priceColoe: .mygreen, backgroundColorImage: .mygreen, backgroundColor: .mygray, shadowbackgroundColor: .clear)
    ]
    
    
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    HStack(spacing: -8){
                        Image("card9")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 211)
                            .offset(y:6)
                        Image("card10")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 210)
                        
                        
                    }.frame(height: 290)
                        .padding(.leading,50)
                    
                    
                    HStack{
                        Text("Popular Operations")
                            .font(
                                Font.custom("Space Grotesk", size: 20)
                                    .weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13))
                            .frame(width: 350, height: 23, alignment: .topLeading)
                    }.padding(.bottom)
                    
                    
                    ScrollView(.horizontal){
                        HStack(spacing: 20){
                            ForEach(Popular_OperationsArry) { operations in
                                operations
                            }.padding()
                        }.padding(.leading,60)
                    }
                    
                    
                    HStack{
                        Text("Transactions")
                            .font(
                                Font.custom("Space Grotesk", size: 20)
                                    .weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13))
                            
                    }.frame(width: 350, height: 20, alignment: .leading)
                        .padding(.top,20)
                    VStack(spacing: 35){
                        
                        ForEach(Transactions_CardArry2) { card in
                            card
                        }
                        
                    }.padding(.top,20)
                    
                }
                
            }
            .navigationTitle("Chart")
            .navigationBarTitleDisplayMode(.inline) // Center the title
            .navigationBarItems(trailing:Button(action: {}) {Image("Group4")})
            .navigationBarItems(leading:Button(action: {}) {Image("align-left")})
        }
    }
}

#Preview {
    Chart4_View()
}
