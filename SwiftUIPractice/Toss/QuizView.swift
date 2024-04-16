//
//  QuizView.swift
//  SwiftUIPractice
//
//  Created by 이재희 on 4/15/24.
//

import SwiftUI

struct QuizView: View {
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                VStack(alignment: .leading, spacing: 15) {
                    Text("등기부등본은 집주인만 발급받을 수 있다?")
                        .font(.system(size: 27, weight: .bold))
                        .lineSpacing(5)
                    Text("매일 푸는 금융 퀴즈 290,300명 참여중")
                }
                .padding(.vertical, 20)
                HStack {
                    VStack(spacing: 20) {
                        Image(systemName: "circle")
                        Text("그렇다")
                    }
                    .padding()
                    .background(.blue)
                    VStack(spacing: 20) {
                        Image(systemName: "xmark")
                        Text("아니다")
                    }
                    .padding()
                    .background(.red)
                }
                .font(.title2)
                .padding(.bottom, 20)
            }
            .background(Color.indigo)
            .padding(.horizontal, 20)
            Spacer()
            HStack {
                VStack(spacing: 20) {
                    Image(systemName: "circle")
                    Text("토스뱅크")
                }
                .padding()
                .background(Color.indigo)
                Spacer()
                VStack(spacing: 20) {
                    Image(systemName: "circle")
                    Text("토스증권")
                }
                .padding()
                .background(Color.indigo)
                Spacer()
                VStack(spacing: 20) {
                    Image(systemName: "circle")
                    Text("고객센터")
                }
                .padding()
                .background(Color.indigo)
            }
            .font(.title2)
            .padding(20)
        }
    }
}

#Preview {
    QuizView()
}
