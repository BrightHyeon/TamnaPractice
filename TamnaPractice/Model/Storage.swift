//
//  Storage.swift
//  TamnaPractice
//
//  Created by HyeonSoo Kim on 2022/02/21.
//

import Foundation
import Combine

struct Storage: Hashable {
    let title: String
    let cash: String
}

final class ModelData: ObservableObject {
    @Published var storageList: [Storage] = [
        Storage(title: "내 캐시", cash: "4,620원"),
        Storage(title: "내 쿠폰", cash: "0개"),
        Storage(title: "제휴사 포인트", cash: "0P"),
        Storage(title: "총 받은 혜택", cash: "165,000원"),
        Storage(title: "2월 받은 혜택", cash: "10,000원")
    ]
}
