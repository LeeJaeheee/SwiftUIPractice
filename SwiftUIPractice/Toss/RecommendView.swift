//
//  RecommendView.swift
//  SwiftUIPractice
//
//  Created by 이재희 on 4/15/24.
//

import SwiftUI

struct RecommendView: View {
    var body: some View {
        
        VStack {
            VStack(alignment: .leading, spacing: 30, content: {

                Text("포인트를 더 모을 수 있게 맞춤 혜택을 추천해드릴까요?")
                    .font(.system(size: 27, weight: .bold))
                    .lineSpacing(5)
                    .padding(.vertical, 30)

                HStack(spacing: 15) {
                    Image(systemName: "checkmark.square.fill")
                        .foregroundStyle(.blue)
                    Text("매일 포인트 받는 출석체크-퀴즈")
                }
 
                HStack(spacing: 15) {
                    Image(systemName: "n.circle.fill")
                        .foregroundStyle(.red)
                    Text("새로운 이벤트")
                }

                HStack(spacing: 15) {
                    Image(systemName: "star.fill")
                        .foregroundStyle(.yellow)
                    Text("미션 추천")
                }
                
                Spacer()
                
                Text("[선택] 맞춤형 서비스 이용 동의")
                    .padding()
                    .font(.system(size: 17))
            })
            .font(.title3)

            Button("동의하기") { }
                .padding()
                .background(.blue)
                .foregroundStyle(.white)
                .cornerRadius(12)
            Button("다음에 하기") { }
                .padding()
                .foregroundStyle(.gray)
            
        }
    }
}

#Preview {
    RecommendView()
}
