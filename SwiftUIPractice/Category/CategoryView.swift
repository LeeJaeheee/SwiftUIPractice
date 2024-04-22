//
//  CategoryView.swift
//  SwiftUIPractice
//
//  Created by 이재희 on 4/22/24.
//

import SwiftUI

struct Category: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let count: Int
}

struct CategoryView: View {
    let genres = ["스릴러", "SF", "로맨스", "애니메이션"]
    @State var category = [Category(name: "스릴러", count: 1),
                           Category(name: "스릴러", count: 2),
                           Category(name: "SF", count: 3),
                           Category(name: "로맨스", count: 4),
                           Category(name: "애니메이션", count: 5)]
    
    @State private var query = ""
    
    var filterCategory: [Category] {
        return query.isEmpty ? category : category.filter { $0.name.contains(query) }
    }

    var body: some View {
        NavigationView {
            List {
                ForEach(filterCategory, id: \.self) { value in
                    NavigationLink {
                        SearchDetailView(category: value)
                    } label: {
                        setupRows(value)
                    }
                }
            }
            .navigationTitle("영화 검색")
            .toolbar {
                ToolbarItem {
                    Button(action: {
                        category.append(.init(name: genres.randomElement()!, count: Int.random(in: 1...100)))
                    }, label: {
                        Text("추가")
                    })
                }
            }
            .searchable(text: $query, placement: .navigationBarDrawer, prompt: "영화를 검색해보세요")
            .onSubmit(of: .search) {
                print("aaaaa")
            }
        }
    }
    
    func setupRows(_ category: Category) -> some View {
        HStack {
            Image(systemName: "person")
            Text("\(category.name) \(category.count)")
        }
    }
}

struct SearchDetailView: View {
    
    let category: Category
    
    var body: some View {
        Text(category.name)
    }
}

#Preview {
    CategoryView()
}
