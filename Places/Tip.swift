//
//  Tip.swift
//  Places
//
//  Created by Debdut Karmakar on 9/25/22.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
    
    static let example = Tip(text: "Where to go", children: [Tip(text: "You shall go where ever your heart wants", children: [])])
}
