//
//  Tab_View.swift
//  BankingApp
//
//  Created by Aljwhra Alnasser on 09/11/2023.
//

import SwiftUI

struct Tab_View: View {
    var body: some View {
        TabView{
            Home_View()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
           Dashboard_View()
                .tabItem {
                    Image(systemName: "circle.hexagongrid.fill")
                    Text("Explore")
                }
                
            
            Services_View()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
            
            Portfolio_View()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
            
        }
    }
}

#Preview {
    Tab_View()
}
