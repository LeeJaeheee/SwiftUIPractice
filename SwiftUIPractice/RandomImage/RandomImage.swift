//
//  RandomImage.swift
//  SwiftUIPractice
//
//  Created by 이재희 on 4/21/24.
//

import SwiftUI

struct RandomImage: View {
    let url = URL(string: "https://picsum.photos/200/300")
    
    var body: some View {
        AsyncImage(url: url) { data in
            switch data {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .scaledToFill()
                    .clipShape(.rect(cornerRadius: 20))
            case .failure(_):
                Image(systemName: "star")
            @unknown default:
                fatalError()
            }
        }
        .frame(width: 100, height: 150)
    }
}

#Preview {
    RandomImage()
}
