//
//  ContentView.swift
//  MySpar
//
//  Created by Zhansen Zhalel on 02.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Go to page") {
                ProductView()
            }
        }
    }
}

#Preview {
    ContentView()
}
