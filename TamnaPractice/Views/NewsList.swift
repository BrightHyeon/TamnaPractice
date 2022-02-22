//
//  NewsList.swift
//  TamnaPractice
//
//  Created by HyeonSoo Kim on 2022/02/21.
//

import SwiftUI

struct NewsList: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("탐나는전 소식")
                .fontWeight(.medium)
            Divider()
            HStack() {
                VStack(alignment: .leading) {
                    Text("탐나는전")
                    Text("환불안내")
                        .fontWeight(.semibold)
                }
                Spacer()
                Image(systemName: "wonsign.circle.fill")
                    .resizable()
                    .frame(width: 30, height: 30, alignment: .center)
                    .padding().frame(width: 50, height: 50)
                    .shadow(color: .yellow, radius: 7, x: 0, y: 5)
                    .foregroundColor(.orange)
                    .overlay {
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(.orange)
                    }
                Spacer().frame(width: 10)
            }
            Divider()
            HStack {
                VStack(alignment: .leading) {
                    Text("제주의 지역화폐")
                    Text("탐나는전 안내")
                        .fontWeight(.semibold)
                }
                Spacer()
                Image(systemName: "exclamationmark.bubble")
                    .resizable()
                    .frame(width: 30, height: 30, alignment: .center)
                    .padding().frame(width: 50, height: 50)
                    .shadow(color: .yellow, radius: 7, x: 0, y: 5)
                    .foregroundColor(.orange)
                    .overlay {
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(.orange)
                    }
                Spacer().frame(width: 10)
            }
            Divider()
            HStack {
                VStack(alignment: .leading) {
                    Text("탐나는전")
                    Text("가맹점 등록 신청 접수")
                        .fontWeight(.semibold)
                }
                Spacer()
                Image(systemName: "house")
                    .resizable()
                    .frame(width: 30, height: 30, alignment: .center)
                    .padding().frame(width: 50, height: 50)
                    .shadow(color: .yellow, radius: 7, x: 0, y: 5)
                    .foregroundColor(.orange)
                    .overlay {
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(.orange)
                    }
                Spacer().frame(width: 10)
            }
            Divider()
            HStack {
                VStack(alignment: .leading) {
                    Text("탐나는전")
                    Text("오프라인 판매대행점")
                        .fontWeight(.semibold)
                }
                Spacer()
                Image(systemName: "cart.fill")
                    .resizable()
                    .frame(width: 30, height: 30, alignment: .center)
                    .padding().frame(width: 50, height: 50)
                    .shadow(color: .yellow, radius: 7, x: 0, y: 5)
                    .foregroundColor(.orange)
                    .overlay {
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(.orange)
                    }
                Spacer().frame(width: 10)
            }
            Divider()
        }
    }
}

struct NewsList_Previews: PreviewProvider {
    static var previews: some View {
        NewsList()
    }
}
