//
//  ContentView.swift
//  SpoonAndFork
//
//  Created by Раджаб Магомедов on 14.03.2025.
//

import SwiftUI

struct SpoonAndForkTabView: View {
    var body: some View {
        TabView {
            SpoonAndForkListView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
        }
        .accentColor(Color("brandPrimary"))
    }
}

#Preview {
    SpoonAndForkTabView()
}
