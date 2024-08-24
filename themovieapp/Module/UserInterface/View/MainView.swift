//
//  MainView.swift
//  themovieapp
//
//  Created by Pablo Benzo on 23/08/2024.
//

import SwiftUI
import UIKit

struct MainView: View {
    
    private let homeViewModel = HomeViewModel()
    
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "list.dash")
                }
                .toolbarBackground(.gray, for: .tabBar)
            
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "square.and.pencil")
                }
                .toolbarBackground(homeViewModel.colorManager(color: .gray), for: .tabBar)
            
            ListView()
                .tabItem {
                    Label("Watch list", systemImage: "square.and.pencil")
                }
                .toolbarBackground(.gray, for: .tabBar)
                
        }
        .tint(.white)
        .listSectionSeparatorTint(.red)
        

    }
}

#Preview {
    MainView()
}
