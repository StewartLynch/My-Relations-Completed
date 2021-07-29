//
//  ListRow.swift
//  ListRow
//
//  Created by Stewart Lynch on 2021-07-28.
//

import SwiftUI

struct ListRow: View {
    let relation: Person
    let index: Int
    var body: some View {
        HStack {
            Text("\(index + 1)")
                .font(.system(size: 24, weight: .black, design: .rounded))
                .foregroundColor(.gray)
                .frame(width: 50)
            Text(relation.emoji)
                .font(.largeTitle)
            Text(relation.name)
            Spacer()
            if relation.immediate {
                Text("👨‍👧‍👦")
            }
        }
       
    }
}
