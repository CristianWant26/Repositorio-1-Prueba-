//
//  HomeView.swift
//  POO
//
//  Created by Cristian Gómez  on 09/10/24.
//

import SwiftUI

struct HomeView : View{
    var body: some View{
        
        TabView{
            HomeTab().tabItem {
                Label("", systemImage: "house")
            }
            Tab2().tabItem{
                Label("", systemImage: "person")
            }
            Tab3().tabItem{
                Label("", systemImage: "bell")
            }
            Tab4().tabItem {
                Label("", systemImage: "moon")
            }
        }
    }
}

#Preview{
    HomeView()
        .preferredColorScheme(.dark)
}
