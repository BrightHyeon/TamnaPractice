//
//  ConcludingRemarks.swift
//  TamnaPractice
//
//  Created by HyeonSoo Kim on 2022/02/22.
//

import SwiftUI

struct ConcludingRemarks: View {
    var body: some View {
        Color.gray.opacity(0.3)
            .frame(height: 170)
            .overlay {
                VStack {
                    HStack {
                        Spacer()
                        Text("개인정보처리방침")
                            .font(.caption)
                            .foregroundColor(.secondary)
                            .underline()
                            .padding(.trailing)
                            .padding(.bottom)
                    }
                    Text("이 프로젝트는 실제 탐나는전 앱을 참고한 것입니다.")
                        .font(.subheadline)
                    Spacer().frame(height: 10)
                    VStack {
                        Text("주소: 제주시 아라동 인다2길")
                        Text("개발자 지망생 : Bright Hyeon")
                        Text("문의 : swiftist9891@gmail.com")
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    Spacer().frame(height: 10)
                    HStack {
                        Text("★ BrightHyeon |")
                            .font(.subheadline)
                        Text("Swiftist")
                            .font(.subheadline)
                            .fontWeight(.light)
                    }
                }
            }
    }
}

struct ConcludingRemarks_Previews: PreviewProvider {
    static var previews: some View {
        ConcludingRemarks()
    }
}
