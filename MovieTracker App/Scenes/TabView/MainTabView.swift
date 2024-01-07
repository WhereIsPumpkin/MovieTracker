//
//  ContentView.swift
//  MovieTracker App
//
//  Created by Saba Gogrichiani on 05.01.24.
//

import SwiftUI

struct MainTabView: View {
    
    var body: some View {
        TabView {
            FamousPersonsView(viewModel: FamousPersonsVM())
                .tabItem {
                    Label("Persons", systemImage: "person.fill")
                }
            
            CinemaView(viewModel: CinemaVM())
                .tabItem {
                    Label("Cinema", systemImage: "popcorn.fill")
                }
            
            TvSeriesView(viewModel: TvSeriesVM())
                .tabItem {
                    Label("Tv Series", systemImage: "tv.fill")
                }
                .toolbarBackground(.hidden, for: .tabBar)
        }
        .onAppear {
            UITabBar.appearance().backgroundColor = UIColor(.black)
            UITabBar.appearance().unselectedItemTintColor = UIColor(.gray)
        }
    }
}
#Preview {
    MainTabView()
}
