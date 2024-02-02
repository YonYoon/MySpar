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
                
                HStack {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Описание")
                            .fontWeight(.bold)
                        Text("Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов.")
                    }
                    
                    Spacer()
                }
                .padding(.bottom)
                
                HStack {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Основные характеристики")
                            .fontWeight(.bold)
                        
                        Characteristic(key: "Производство", value: "Россия, Краснодарский край")
                        Characteristic(key: "Энергетическая ценность, ккал/100г", value: "25 ккал, 105 кДж")
                        Characteristic(key: "Жиры 100/г", value: "0,1г")
                        Characteristic(key: "Белки/100г", value: "1,3г")
                        Characteristic(key: "Углеводы/100г", value: "3,3г")
                        
                        Button("Все характеристики") { }
                            .fontWeight(.bold)
                    }
                    
                    Spacer()
                }
                .padding(.bottom, 30)
                
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
                .shadow(radius: 3)
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

struct Characteristic: View {
    let key: String
    let value: String
    
    var body: some View {
        HStack {
            Text(key)
            Spacer()
            Text(value)
        }
        .font(.callout)
        .padding(.bottom)
    }
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
