//
//  Bank_Card.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 07/11/2023.
//

import SwiftUI

struct Bank_Card: View , Identifiable {
    
    var id = UUID()
    var imageCard : String
    
    var body: some View {
        VStack{
            
            Image(imageCard)
        }
    }
}

#Preview {
    Bank_Card(imageCard: "card1")
}
