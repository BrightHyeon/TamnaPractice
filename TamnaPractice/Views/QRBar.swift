//
//  QRBar.swift
//  TamnaPractice
//
//  Created by HyeonSoo Kim on 2022/02/21.
//

import SwiftUI

struct QRBar: View {
    var body: some View {
        HStack {
            Spacer().frame(width: 15)
            Button {
                print("QR로 결제하세요.")
            } label: {
                MyHStack(imageName: "qrcode.viewfinder", title: "QR 결제")
            }
            Spacer()
            Button {
                print("충전하세요.")
            } label: {
                MyHStack(imageName: "wonsign.circle.fill", title: "충전")
            }
            Spacer()
            Button {
                print("이용내역을 확인하세요.")
            } label: {
                MyHStack(imageName: "book.circle", title: "이용내역")
            }
            Spacer().frame(width: 15)
        }
        .foregroundColor(.white)
        .padding()
        .background(Color(hue: 0.072, saturation: 0.898, brightness: 0.876, opacity: 0.805))
    }
}

struct MyHStack: View {
    let imageName: String!
    let title: String!
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
            Text(title)
        }
    }
}

struct QRBar_Previews: PreviewProvider {
    static var previews: some View {
        QRBar()
    }
}
