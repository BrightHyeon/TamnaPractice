//
//  TravelWithTamnaView.swift
//  TamnaPractice
//
//  Created by HyeonSoo Kim on 2022/02/22.
//

import SwiftUI

struct TravelWithTamnaView: View {
    
    private let travelList: [String] = ["동백군락", "메밀꽃밭", "빛의 벙커", "산굼부리", "삼양해수욕장", "새별오름", "오늘은 녹차한잔"]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("탐나는전과 함께하는 제주도 여행")
            Divider()
            ScrollView(.horizontal) {
                HStack(spacing: 0) {
                    ForEach(travelList, id: \.self) {
                        JustV(name: $0)
                    }
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 10))
                }
            }
        }
        .padding()
    }
}

struct JustV: View {
    let name: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(name)
                .resizable()
                .frame(width: 130, height: 130, alignment: .center)
            Text(name)
                .font(.caption)
        }
    }
}

struct TravelWithTamnaView_Previews: PreviewProvider {
    static var previews: some View {
        TravelWithTamnaView()
    }
}
