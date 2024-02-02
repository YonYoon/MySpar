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
            
            HStack {
                Image("Spain")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .clipShape(Circle())
                Text("Испания, Риоха")
                
                Spacer()
            }
            .padding(.leading)
            .padding(.bottom)
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Описание")
                    .fontWeight(.bold)
                Text("Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов.")
            }
            .padding(.bottom)
        }
        .padding(.horizontal)
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
