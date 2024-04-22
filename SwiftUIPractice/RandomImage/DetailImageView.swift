//
//  DetailImageView.swift
//  SwiftUIPractice
//
//  Created by 이재희 on 4/21/24.
//

import SwiftUI

struct DetailImageView: View {

    @Binding var sectionTitle: String
    
    var body: some View {
        VStack {
            
            TextField("섹션 타이틀을 입력해주세요", text: $sectionTitle)
                .padding()
                .textFieldStyle(.roundedBorder)
            
        }
    }

}

//#Preview {
//    DetailImageView()
//}
