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
            
            Image("Product")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            
            HStack {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
                Text("4.1")
                Text("| 19 отзывов")
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Rectangle()
                    .frame(width: 60, height: 30)
                    .foregroundStyle(.red)
                    .overlay {
                        Text("-5%")
                            .foregroundStyle(.white)
                            .fontWeight(.bold)
                    }
            }
            .padding(.bottom)
            
            HStack {
                Text("Добавка \"Липа\" к чаю 200 г")
                    .font(.largeTitle)
                    .fontWeight(.bold)
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
