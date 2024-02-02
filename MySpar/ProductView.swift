//
//  ProductView.swift
//  MySpar
//
//  Created by Zhansen Zhalel on 02.02.2024.
//

import SwiftUI

struct ProductView: View {
    var body: some View {
        VStack {
            HStack {
                Button(action: {}, label: {
                    Text("Цена по карте")
                })
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle)
                
                Spacer()
            }
        }
        .padding()
        .toolbar {
            ToolbarItem(placement: .automatic) {
                Button("List", systemImage: "list.bullet.rectangle.portrait") {
                    // action
                }
            }
            
            ToolbarItem(placement: .automatic) {
                Button("Share", systemImage: "square.and.arrow.up") {
                    // action
                }
            }
            
            ToolbarItem(placement: .automatic) {
                Button("Favorite", systemImage: "heart") {
                    // action
                }
            }
        }
    }
}

#Preview {
    ProductView()
}
