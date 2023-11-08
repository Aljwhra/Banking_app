//
//  Bank_Small_Card.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 07/11/2023.
//

import SwiftUI

struct Bank_Small_Card: View , Identifiable {
    
    var id = UUID()
    var smallCard: String
    
    var body: some View {
        Image(smallCard)
    }
}

#Preview {
    Bank_Small_Card(smallCard: "smallCard1")
}
