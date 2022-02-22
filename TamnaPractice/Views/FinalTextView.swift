//
//  FinalTextView.swift
//  TamnaPractice
//
//  Created by HyeonSoo Kim on 2022/02/22.
//

import SwiftUI

struct FinalTextView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("공지사항")
                Spacer()
                Image(systemName: "chevron.right")
            }
            Divider()
            HStack {
                Text("제주도 소식")
                Spacer()
                Image(systemName: "chevron.right")
            }
            Divider()
            HStack {
                Text("탐나는전 FAQ")
                Spacer()
                Image(systemName: "chevron.right")
            }
        }
    }
}

struct FinalTextView_Previews: PreviewProvider {
    static var previews: some View {
        FinalTextView()
    }
}
