//
//  ProductView.swift
//  MySpar
//
//  Created by Zhansen Zhalel on 02.02.2024.
//

import SwiftUI

struct ProductView: View {
    var body: some View {
        ScrollView {
            VStack {
                ProductTopView()
                
                ProductMainView()
                
                ProductBottomView()
            }
            .padding(.horizontal)
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
