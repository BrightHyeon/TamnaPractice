//
//  NavigationBarWithButton.swift
//  TamnaPractice
//
//  Created by HyeonSoo Kim on 2022/02/19.
//

import SwiftUI

struct NavigationBarWithButton: ViewModifier {
    
    func body(content: Content) -> some View {
        return content
            .navigationBarItems(
                leading: Text("탐나는전")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white),
                trailing: Button(
                    action: {
                        print("네비게이션 바 우측 버튼 Tapped")
                    }, label: {
                        Image(systemName: "line.3.horizontal")
                    })
                    .accentColor(.white)
            )
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                let apperance = UINavigationBarAppearance()
                apperance.backgroundColor = UIColor(.orange)
                apperance.shadowColor = .clear
                UINavigationBar.appearance().standardAppearance = apperance //이렇게 해야 스크롤 내려도 바가 안사라짐.
                UINavigationBar.appearance().scrollEdgeAppearance = apperance
            }
    }
}

extension View {
    func navigationBarWithButtonStyle(_ title: String) -> some View {
        return self.modifier(NavigationBarWithButton())
    }
}

struct NavigationBarWithButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Color.white.edgesIgnoringSafeArea(.all)
                .navigationBarWithButtonStyle("탐나는전")
        }
    }
}
