//
//  ImageHorizon.swift
//  TamnaPractice
//
//  Created by HyeonSoo Kim on 2022/02/21.
//

import SwiftUI

struct ImageHorizon: View {
    var body: some View {
        HStack {
            Spacer()
            VStack(spacing: 10) {
                Button {
                    print("가맹점으로 등록해보세요.")
                } label: {
                    Image(systemName: "applescript.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding().frame(width: 50, height: 50)
                        .foregroundColor(.orange)
                        .overlay {
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(.orange)
                        }
                        .shadow(color: .yellow, radius: 7, x: 0, y: 3)
                }
                Text("가맹점 등록신청")
                    .font(.subheadline)
                    .fontWeight(.light)
            }
            Spacer()
            VStack {
                Button {
                    print("포스트를 확인해보세요.")
                } label: {
                    Image(systemName: "doc.text")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding().frame(width: 50, height: 50)
                        .foregroundColor(.orange)
                        .overlay {
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(.orange)
                        }
                        .shadow(color: .yellow, radius: 7, x: 0, y: 3)
                }
                Text("제주 포스트")
                    .font(.subheadline)
                    .fontWeight(.light)
            }
            Spacer().frame(width: 40)
            VStack {
                Button {
                    print("더 많은 정보를 확인해보세요.")
                } label: {
                    Image(systemName: "person.fill.questionmark")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding().frame(width: 50, height: 50)
                        .foregroundColor(.orange)
                        .overlay {
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(.orange)
                        }
                        .shadow(color: .yellow, radius: 7, x: 0, y: 3)
                }
                Text("탐나는전 FAQ")
                    .font(.subheadline)
                    .fontWeight(.light)
            }
            Spacer()
        }
    }
}

struct ImageHorizon_Previews: PreviewProvider {
    static var previews: some View {
        ImageHorizon()
    }
}
