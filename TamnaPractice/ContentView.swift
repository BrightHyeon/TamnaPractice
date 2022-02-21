//
//  ContentView.swift
//  TamnaPractice
//
//  Created by HyeonSoo Kim on 2022/02/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Spacer()
                    CashHorizon()
                    QRBar()
                }
                .background(Color.orange)
                .navigationBarWithButtonStyle("탐나는전")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
