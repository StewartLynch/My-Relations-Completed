//
//  Names.swift
//  Names
//
//  Created by Stewart Lynch on 2021-07-27.
//

import Foundation

struct Person: Identifiable {
    let name: String
    let emoji: String
    var id = UUID()
    var immediate = false
    
    static var myRelations: [Person] {
        [
            Person(name: "Allen", emoji: "🤡"),
            Person(name: "Kathryn", emoji: "👩‍⚕️"),
            Person(name: "Emily", emoji: "😼"),
            Person(name: "Sandy", emoji: "🙍🏽"),
            Person(name: "Stewart", emoji: "👺"),
            Person(name: "Millie", emoji: "💇🏻‍♀️"),
            Person(name: "Isabel", emoji: "🧖🏿"),
            Person(name: "Colin", emoji: "🤴🏽"),
            Person(name: "Aidan", emoji: "☠️"),
            Person(name: "Malcolm", emoji: "👨🏿‍🦳"),
            Person(name: "Elizabeth", emoji: "👩🏼‍🦳"),
        ]
    }
}
