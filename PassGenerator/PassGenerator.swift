//
//  PassGenerator.swift
//  PassGenerator
//
//  Created by Daniel Lambrecht on 13/03/2017.
//  Copyright © 2017 Lambrecht Design. All rights reserved.
//

import Foundation

class PassGenerator {
    
    var person: Person
    var entrant: Entrant
    
    init(person: Person, entrantType: Entrant) {
        self.person = person
        self.entrant = entrantType
    }
}
