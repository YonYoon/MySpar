//
//  MainView.swift
//  MySpar
//
//  Created by Zhansen Zhalel on 02.02.2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Go to page") {
                ProductView()
            }
        }
    }
}

#Preview {
    MainView()
}
