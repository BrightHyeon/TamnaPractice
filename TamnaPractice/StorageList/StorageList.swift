//
//  StorageList.swift
//  TamnaPractice
//
//  Created by HyeonSoo Kim on 2022/02/21.
//

import SwiftUI

struct StorageList: View {
    @EnvironmentObject var modelData: ModelData
    
    var storageList: [Storage] {
        modelData.storageList
    }
    
    
    var body: some View {
        VStack {
            ForEach(storageList, id: \.self) { storage in
                ListCell(storage: storage)
                    .padding(EdgeInsets(top: 0, leading: 3, bottom: 5, trailing: 3))
                if storage != storageList[storageList.endIndex - 1] {
                    Divider()
                }
            }
        }
        .padding()
//        .border(.gray, width: 1)
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(.gray)
        }
    }
}

struct StorageList_Previews: PreviewProvider {
    static var previews: some View {
        StorageList()
            .environmentObject(ModelData())
    }
}
