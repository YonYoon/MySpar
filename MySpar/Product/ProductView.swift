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
//                .padding(.bottom, 5)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("55.9")
                            .font(.title)
                            .fontWeight(.bold)
                        Text("199,0")
                            .strikethrough()
                            .foregroundStyle(.secondary)
                    }
                    
                    Spacer()
                    
                    RoundedRectangle(cornerRadius: 40)
                        .containerRelativeFrame(.horizontal) { width, axis in
                            width * 0.4
                        }
                        .frame(height: 50)
                        .foregroundStyle(.accent)
                        .overlay {
                            HStack(spacing: 15) {
                                Text("-")
                                    .font(.largeTitle)
                                
                                VStack {
                                    Text("1 шт")
                                        .font(.title3)
                                        .fontWeight(.bold)
                                    Text("120,0₽")
                                }
                                
                                Text("+")
                                    .font(.largeTitle)
                            }
                            .foregroundStyle(.white)
                        }
                }
                .padding(.bottom)
            }
            .padding(.horizontal)
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
