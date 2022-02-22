//
//  FindCell.swift
//  TamnaPractice
//
//  Created by HyeonSoo Kim on 2022/02/21.
//

import SwiftUI

struct FindCell: View {
    var body: some View {
        VStack {
            Button {
                print("사용자 주변 가맹점을 찾아보세요.")
            } label: {
                HStack {
                    Text("탐나는전")
                    Spacer().frame(width: 4)
                    Text("가맹점 찾기")
                        .fontWeight(.bold)
                    Spacer()
                    Image(systemName: "star.fill")
                    Spacer().frame(width: 20)
                }
                .foregroundColor(.white)
                .padding()
                .background(.orange)
                .cornerRadius(5)
            }
            Button {
                print("사용자 주변 가맹점을 찾아보세요.")
            } label: {
                HStack {
                    Text("KB포인트리 내역")
                    Spacer().frame(width: 4)
                    Text("조회/전환하기")
                        .fontWeight(.bold)
                    Spacer()
                    Image(systemName: "chevron.right")
                    Spacer().frame(width: 5)
                }
                .foregroundColor(.white)
                .padding()
                .background(.mint)
                .cornerRadius(5)
            }
        }
    }
}

struct FindCell_Previews: PreviewProvider {
    static var previews: some View {
        FindCell()
    }
}
