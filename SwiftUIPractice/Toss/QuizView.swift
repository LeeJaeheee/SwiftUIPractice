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
                    OptionView(systemName: "circle", text: "그렇다", backgroundColor: .blue)
                    OptionView(systemName: "xmark", text: "아니다", backgroundColor: .red)
                }
                .padding(.bottom, 20)
            }
            .background(Color.indigo)
            .padding([.horizontal, .top], 20)
            
            //Spacer()
            HStack {
                OptionView(systemName: "circle", text: "토스뱅크")
                Spacer()
                OptionView(systemName: "circle", text: "토스증권")
                Spacer()
                OptionView(systemName: "circle", text: "고객센터")
            }
            .padding(20)
        }
        .background(.yellow)
    }
}

struct OptionView: View {
    var systemName: String
    var text: String
    var backgroundColor: Color = .indigo

    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: systemName)
            Text(text)
        }
        .padding()
        .background(backgroundColor)
        .font(.title2)
    }
}

#Preview {
    QuizView()
}
