//
//  BarsView.swift
//  TamnaPractice
//
//  Created by HyeonSoo Kim on 2022/02/22.
//

import SwiftUI

struct BarsView: View {
    var body: some View {
        VStack {
            ZStack {
                Color.blue.opacity(0.4)
                    .frame(height: 130)
                    .cornerRadius(5)
                HStack {
                    VStack(alignment: .leading) {
                        Text("제주에서 즐기자!")
                        Text("제주도 공식 포스트")
                            .fontWeight(.bold)
                    }
                    Spacer()
                    Image("jeju")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())

                    Spacer().frame(width: 30)
                }
                .padding()
            }
            
            Spacer().frame(height: 15)
            
            Button {
                print("탐나는전 카드")
            } label: {
                HStack {
                    Image(systemName: "creditcard")
                        .resizable()
                        .frame(width: 30, height: 20)
                    Text("  탐나는전 카드")
                        .fontWeight(.bold)
                    Spacer().frame(width: 4)
                    Text("추가 신청하기")
                    Spacer()
                    Image(systemName: "chevron.right")
                    Spacer().frame(width: 5)
                }
                .foregroundColor(.white)
                .padding()
                .background(.orange)
                .cornerRadius(5)
            }
        }
        .padding()
    }
}

struct BarsView_Previews: PreviewProvider {
    static var previews: some View {
        BarsView()
    }
}
