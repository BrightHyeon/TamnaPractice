//
//  TableList.swift
//  TamnaPractice
//
//  Created by HyeonSoo Kim on 2022/02/21.
//

import SwiftUI

struct ListCell: View {
    var storage: Storage
    
    var body: some View {
        HStack {
            Text(storage.title)
                .fontWeight(.semibold)
            
            Spacer()
            
            Text(storage.cash)
                .font(.title3)
                .fontWeight(.semibold)
        }
    }
}

struct ListCell_Previews: PreviewProvider {
    static var storageList = ModelData().storageList
    
    static var previews: some View {
        Group {
            ListCell(storage: storageList[0])
            ListCell(storage: storageList[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
