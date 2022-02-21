//
//  CashHorizon.swift
//  TamnaPractice
//
//  Created by HyeonSoo Kim on 2022/02/21.
//

import SwiftUI

struct CashHorizon: View {
    var body: some View {
        HStack(spacing: 20) {
            Button {
                print("카드 정보 창으로 이동.")
            } label: {
                Image(systemName: "circle")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .foregroundColor(.white)
            }
            VStack(alignment: .leading, spacing: 6) {
                Text("사용 가능 금액")
                    .font(.subheadline)
                Text("46,200원")
                    .font(.title2)
                    .fontWeight(.bold)
            }
            .foregroundColor(.white)
            Spacer()
        }
        .padding()
        .background(.orange)
    }
}

struct CashHorizon_Previews: PreviewProvider {
    static var previews: some View {
        CashHorizon()
    }
}
