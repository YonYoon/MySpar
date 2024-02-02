//
//  ProductView.swift
//  MySpar
//
//  Created by Zhansen Zhalel on 02.02.2024.
//

import SwiftUI

struct ProductView: View {
    @State private var type = "Шт"
    private let types = ["Шт", "Кг"]
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    ProductTopView()
                    
                    ProductMainView()
                    
                    ProductBottomView()
                }
                .padding(.horizontal)
            }
            
            VStack {
                Picker("Select type of quantity", selection: $type) {
                    ForEach(types, id: \.self) { type in
                        Text(type)
                    }
                }
            }
            .pickerStyle(.segmented)
        }
        .toolbar {
            ToolbarItem(placement: .automatic) {
                Button("List", systemImage: "list.bullet.rectangle.portrait") { }
            }
            
            ToolbarItem(placement: .automatic) {
                Button("Share", systemImage: "square.and.arrow.up") { }
            }
            
            ToolbarItem(placement: .automatic) {
                Button("Favorite", systemImage: "heart") { }
            }
        }
    }
}

#Preview {
    ProductView()
}
