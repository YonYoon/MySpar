//
//  ProductTopView.swift
//  MySpar
//
//  Created by Zhansen Zhalel on 02.02.2024.
//

import SwiftUI

struct ProductTopView: View {
    var body: some View {
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
    }
}

#Preview {
    ProductTopView()
}
