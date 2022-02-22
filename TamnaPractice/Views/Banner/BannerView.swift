//
//  BannerView.swift
//  TamnaPractice
//
//  Created by HyeonSoo Kim on 2022/02/22.
//

import SwiftUI

struct BannerView: View {
    
    let bannerList: [AdvertisementBanner] = [
        AdvertisementBanner(title: "최대 70만원 충전금액까지", description: "10% 인센티브 혜택!", backgroundColor: .systemPink, imageName: "wonsign.circle.fill", opacity: 1),
        AdvertisementBanner(title: "제주 지역생산품 가맹점에서", description: "8% 추가 할인받으세요!", backgroundColor: .blue, imageName: "08.circle.fill", opacity: 1),
        AdvertisementBanner(title: "탐나는전 가맹점주님들 주목!!!", description: "QR결제 매출신고는 이렇게 하세요", backgroundColor: .blue, imageName: "qrcode", opacity: 0.7),
        AdvertisementBanner(title: "탐나는전 가맹 사장님들을 위한", description: "가맹점 포탈, 지금 가입하세요!", backgroundColor: .systemPink, imageName: "person.3", opacity: 0.7)
    ]
    @State private var currentPage: Int = 0
    
    var body: some View {
        let bannerCards: [BannerCard] = bannerList.map {
            BannerCard(banner: $0)
        }
        
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: bannerCards, currentPage: $currentPage)
            PageControl(numberOfPages: bannerCards.count, currentPage: $currentPage)
                .frame(width: CGFloat(bannerCards.count * 15))
                .padding(.trailing)
        }
        .cornerRadius(5)
        
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        BannerView()
            .aspectRatio(5/2, contentMode: .fit)
    }
}
