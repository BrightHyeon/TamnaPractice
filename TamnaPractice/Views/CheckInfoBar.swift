//
//  CheckInfoBar.swift
//  TamnaPractice
//
//  Created by HyeonSoo Kim on 2022/02/22.
//

import SwiftUI

struct CheckInfoBar: View {
    var body: some View {
        Button {
            print("탐나는전 카드")
        } label: {
            ZStack {
                Color.gray.opacity(0.2)
                    .frame(height: 60)
                HStack {
                    Text("더 많은 여행정보를 확인하세요!")
                    Spacer()
                    Image(systemName: "chevron.right")
                    Spacer().frame(width: 5)
                }
                .frame(height: 10)
                .foregroundColor(.white)
                .padding().frame(width: CGFloat(UIScreen.main.bounds.width - 20))
                .background(.mint)
                .cornerRadius(5)
            }
        }
    }
}

struct CheckInfoBar_Previews: PreviewProvider {
    static var previews: some View {
        CheckInfoBar()
    }
}
