//
//  RegisterBar.swift
//  TamnaPractice
//
//  Created by HyeonSoo Kim on 2022/02/22.
//

import SwiftUI
import UIKit

struct RegisterBar: View {
    var body: some View {
        Button {
            print("등록해보세요!")
        } label: {
            ZStack {
                Color.gray.opacity(0.2)
                    .frame(height: 50)
                HStack {
                    Spacer()
                    Image(systemName: "creditcard")
                        .resizable()
                        .frame(width: 30, height: 20)
                        .foregroundColor(.orange)
                        .shadow(color: .orange, radius: 5, x: 0, y: 5)
                    Text("탐나는전")
                        .foregroundColor(.orange)
                        .fontWeight(.bold)
                    Spacer().frame(width: 4)
                    Text("이렇게 등록하세요!")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding()
            }
        }
    }
}

struct RegisterBar_Previews: PreviewProvider {
    static var previews: some View {
        RegisterBar()
    }
}
