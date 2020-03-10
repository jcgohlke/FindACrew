//
//  Person.swift
//  FindACrew
//
//  Created by Ben Gohlke on 3/10/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

struct Person: Codable {
    let name: String
    let gender: String
    let birthYear: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case gender
        case birthYear = "birth_year"
    }
}

struct PersonSearch: Codable {
    let results: [Person]
}
