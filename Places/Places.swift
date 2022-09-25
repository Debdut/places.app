//
//  Locations.swift
//  Places
//
//  Created by Debdut Karmakar on 9/25/22.
//

import Foundation

class Places: ObservableObject {
    let places: [Place]
    
    var primary: Place {
        places[0]
    }
    
    init() {
        let url = Bundle.main.url(forResource: "places", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([Place].self, from: data)
    }
}
