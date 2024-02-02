//
//  ProductBottomView.swift
//  MySpar
//
//  Created by Zhansen Zhalel on 02.02.2024.
//

import SwiftUI

struct ProductBottomView: View {
    var body: some View {
        HStack {
            Text("Отзывы")
                .font(.title2)
                .fontWeight(.bold)
            Spacer()
            Button("Все 152") { }
                .fontWeight(.bold)
        }
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                Review()
                Review()
            }
        }
        .shadow(color: .gray.opacity(0.3), radius: 4)
        .padding(.bottom)
        
        Button { } label: {
            RoundedRectangle(cornerRadius: 50)
                .strokeBorder(.accent, lineWidth: 3)
                .frame(maxWidth: .infinity, minHeight: 40, maxHeight: 40)
                .overlay {
                    Text("Оставить отзыв")
                        .font(.title3)
                        .fontWeight(.bold)
                }
        }
        .padding(.bottom)
    }
    
    struct Review: View {
        var body: some View {
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 250, height: 180)
                .foregroundStyle(.background)
                .overlay {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Александр В.")
                            .font(.headline)
                            .fontWeight(.bold)
                        
                        Text("7 мая 2021")
                            .font(.callout)
                            .foregroundStyle(.secondary)
                        
                        HStack {
                            ForEach(0..<5) { _ in
                                Star(choosed: true)
                            }
                            
                            Star(choosed: false)
                        }
                        
                        Text("Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!")
                            .font(.callout)
                    }
                    .padding(.bottom)
                }

        }
        
        struct Star: View {
            var choosed: Bool
            
            var body: some View {
                Image(systemName: "star.fill")
                    .foregroundStyle(choosed ? .yellow : .gray)
            }
        }
    }
}

#Preview {
    ProductBottomView()
}
