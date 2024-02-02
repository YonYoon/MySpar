//
//  TabBarView.swift
//  MySpar
//
//  Created by Zhansen Zhalel on 02.02.2024.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "tree.circle")
                    Text("Главная")
                }
            
            CatalogView()
                .tabItem {
                    Image(systemName: "squareshape.split.2x2")
                    Text("Каталог")
                }
            
            BasketView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Корзина")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Профиль")
                }
        }

    }
}

#Preview {
    TabBarView()
}
