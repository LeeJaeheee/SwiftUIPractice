//
//  RandomImageView.swift
//  SwiftUIPractice
//
//  Created by 이재희 on 4/21/24.
//

import SwiftUI

struct RandomImageView: View {
    
    @State var sectionTitles = ["첫번째 타이틀", "두번째 타이틀", "세번째 타이틀", "네번째 타이틀", "다섯번째 타이틀"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(sectionTitles.indices, id: \.self) { index in
                    Section(header: Text(sectionTitles[index])) {
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(0..<6) { _ in
                                    NavigationLink(destination: DetailImageView(sectionTitle: $sectionTitles[index])) {
                                        RandomImage()
                                    }
                                }
                            }
                        }
                        .scrollIndicators(.never)
                    }
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .navigationTitle("Random Image")
        }
    }
}

#Preview {
    RandomImageView()
}
