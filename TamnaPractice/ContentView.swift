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
                    VStack {
                        Spacer()
                        CashHorizon()
                        QRBar()
                    }
                    .background(Color.orange)
                    .navigationBarWithButtonStyle("탐나는전")
                    
                    Spacer().frame(height: 0) //사이좁혀지도록.
                    
                    StorageList()
                        .padding()
                    
                    ImageHorizon()
                    
                    BannerView()
                        .aspectRatio(5/2, contentMode: .fit)
                        .padding(.leading)
                        .padding(.trailing)
                        .padding(.top)
                    
                    FindCell()
                        .padding()
                    
                    NewsList()
                        .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
