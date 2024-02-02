//
//  ProductMainView.swift
//  MySpar
//
//  Created by Zhansen Zhalel on 02.02.2024.
//

import SwiftUI

struct ProductMainView: View {
    var body: some View {
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
}

#Preview {
    ProductMainView()
}
