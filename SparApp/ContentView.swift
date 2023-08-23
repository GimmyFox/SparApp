//
//  ContentView.swift
//  SparApp
//
//  Created by Maksim Guzeev on 23.08.2023.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        let tabbarAppearance = UITabBarAppearance()
        tabbarAppearance.backgroundColor = UIColor(Color.green)
        UITabBar.appearance().unselectedItemTintColor = UIColor(Color.gray)
        UITabBar.appearance().selectedItem?.badgeColor = UIColor(Color.green)
        UITabBar.appearance().backgroundColor = UIColor(Color.white)
        UITabBar.appearance().barTintColor = UIColor(Color.white)
        UITabBar.appearance().isTranslucent = true
        UITabBarItem.appearance().setTitleTextAttributes([.foregroundColor: UIColor(Color.green)], for: .selected)
    }
    var body: some View {
        
        TabView {
            NavigationView {
                MainView()
            }
            .tabItem {
                Image(systemName: "newspaper.circle")
                Text("Главная")
            }
            NavigationView {
                EmptyView()
            }
            .tabItem {
                Image(systemName: "rectangle.grid.2x2")
                Text("Каталог")
            }
            NavigationView {
                EmptyView()
            }
            .tabItem {
                Image(systemName: "cart")
                Text("Корзина")
            }
            NavigationView {
                EmptyView()
            }
            .tabItem {
                Image(systemName: "person")
                Text("Профиль")
            }
        }
        .accentColor(.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
