//
//  TamnaPracticeApp.swift
//  TamnaPractice
//
//  Created by HyeonSoo Kim on 2022/02/19.
//

import SwiftUI

@main
struct TamnaPracticeApp: App {
    
    @StateObject var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
