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
                
                RecommendItemView(icon: "checkmark.square.fill", iconColor: .blue, text: "매일 포인트 받는 출석체크-퀴즈")
                RecommendItemView(icon: "n.circle.fill", iconColor: .red, text: "새로운 이벤트")
                RecommendItemView(icon: "star.fill", iconColor: .yellow, text: "미션 추천")
                
                Spacer()
                
                Text("[선택] 맞춤형 서비스 이용 동의")
                    .padding()
                    .font(.system(size: 17))
            })
            .font(.title3)
            
            Button("동의하기") { }
                .buttonStyle(MyButtonStyle(backgroundColor: .blue))
            
            Button("다음에 하기") { }
                .buttonStyle(MyButtonStyle(foregroundColor: .gray))
            
        }
    }
}

struct RecommendItemView: View {
    let icon: String
    let iconColor: Color
    let text: String
    
    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: icon)
                .foregroundStyle(iconColor)
            Text(text)
        }
    }
}

struct MyButtonStyle: ButtonStyle {
    var backgroundColor: Color = .clear
    var foregroundColor: Color = .white
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(backgroundColor)
            .foregroundStyle(foregroundColor)
            .clipShape(.rect(cornerRadius: 12))
    }
}

#Preview {
    RecommendView()
}
