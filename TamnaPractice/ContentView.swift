//
//  ContentView.swift
//  TamnaPractice
//
//  Created by HyeonSoo Kim on 2022/02/19.
//

import SwiftUI

struct ContentView: View {
    
    @State var scrollViewOffset: CGFloat = 0
    //Getting Start Offset and eliminating from current offset so that we will get exact offset...
    @State var startOffset: CGFloat = 0
    
    var body: some View {
        NavigationView {
            //Scroll to Top Function...
            //with the help of scrollview Reader...
            ScrollViewReader { proxyReader in
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
                        
                        //한 Stack에 인수 10개초과하면 안되기에 묶어줌.
                        VStack {
                            BannerView()
                                .aspectRatio(5/2, contentMode: .fit)
                                .padding(.leading)
                                .padding(.trailing)
                                .padding(.top)
                            
                            FindCell()
                                .padding()
                        
                        
                            NewsList()
                                .padding()
                            
                            Button {
                                print("Tamna")
                            } label: {
                                Image("TamnaCapture")
                                    .aspectRatio(5/2, contentMode: .fit)
                                    .padding()
                            }
                            
                            RegisterBar()
                            
                            TravelWithTamnaView()
                            
                            CheckInfoBar()
                            
                            BarsView()
                            
                            FinalTextView()
                                .padding()
                            
                            ConcludingRemarks()
                        }
                    }
                    //setting ID
                    //so that it can scroll to that position...
                    .id("SCROLL_TO_TOP")
                    //getting scrollView Offset...
                    .overlay(
                        //Using Geometry Reader to get ScrollView Offset...
                        GeometryReader { proxy -> Color in
    //                        let offset = proxy.frame(in: .global).minY
    //                        print(offset)
                            DispatchQueue.main.async {
                                if startOffset == 0 {
                                    self.startOffset = proxy.frame(in: .global).minY //불변값. 내 폰 기준 88.0
                                }
                                
                                let offset = proxy.frame(in: .global).minY //처음엔 88. 스크롤 내리면 비동기적으로 계속 값이 변화. 값 점점 내려감.
                                self.scrollViewOffset = offset - startOffset //처음엔 0. 스크롤 내리면 내려감.
                                
                                print(offset, self.startOffset, self.scrollViewOffset)
                            }
                            
                            return Color.clear
                        }
                        .frame(width: 0, height: 0)
                        
                        ,alignment: .top
                    )
                } //ScrollView { }
                // if offset goes less than 450 then showing floating action button at botton...
                .overlay( //ScrollView overlay
                    
                    Button(action: {
                        //scroll to top with animation...
                        withAnimation(.spring()) {
                            proxyReader.scrollTo("SCROLL_TO_TOP", anchor: .top)
                        }
                    }, label: {
                        Image(systemName: "arrow.up")
                            .font(.system(size: 30, weight: .semibold)) //아...음...이미지크기 이렇게도 조정할 수 있다. (지금까진 frame조정하고 resizable()했다...)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.orange)
                            .clipShape(Circle())
                            .shadow(color: .black.opacity(0.5), radius: 5, x: 5, y: 5)
                    })
                        .padding(.trailing)
                        .padding(.bottom, getSafeArea().bottom == 0 ? 12 : 0)
                        .opacity(-scrollViewOffset > 450 ? 1 : 0)
                        .animation(.easeInOut, value: scrollViewOffset)
                    
                    ,alignment: .bottomTrailing //overlay argument?
            )
            }
        }
    }
}

// extending view to get safearea...
extension View {
    
    func getSafeArea() -> UIEdgeInsets {
        //iOS15부터 windows가 아닌 scenes개념으로 하기에 다른 방식으로 해야함.
        //return UIApplication.shared.windows.first?.safeAreaInsets ?? UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        let keyWindow = UIApplication.shared.connectedScenes
            .filter({$0.activationState == .foregroundActive})
            .map({$0 as? UIWindowScene})
            .compactMap({$0})
            .first?.windows
            .filter({$0.isKeyWindow}).first
        
        return keyWindow?.safeAreaInsets ?? UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
