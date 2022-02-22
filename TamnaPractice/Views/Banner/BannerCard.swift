//
//  BannerCard.swift
//  TamnaPractice
//
//  Created by HyeonSoo Kim on 2022/02/22.
//

import SwiftUI

struct BannerCard: View {
    
    let banner: AdvertisementBanner
    
    var body: some View {
        Color(banner.backgroundColor).opacity(banner.opacity)
            .overlay {
                HStack {
                    Spacer().frame(width: 15)
                    VStack(alignment: .leading, spacing: 5) {
                        Text(banner.title)
                        Text(banner.description)
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.white)
                    Spacer()
                    Image(systemName: banner.imageName)
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                        .shadow(color: .orange, radius: 5, x: 0, y: 3)
                    Spacer().frame(width: 15)
                }
            }
    }
}

struct BannerCard_Previews: PreviewProvider {
    static var previews: some View {
        BannerCard(banner: AdvertisementBanner(title: "안녕", description: "테스트용이야", backgroundColor: .blue, imageName: "star.fill", opacity: 1))
    }
}
