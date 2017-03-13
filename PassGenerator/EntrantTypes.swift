//
//  EntrantTypes.swift
//  PassGenerator
//
//  Created by Daniel Lambrecht on 11/03/2017.
//  Copyright © 2017 Lambrecht Design. All rights reserved.
//

import Foundation

class Guest {
    // Personal information
    let dateOfBirth: Date?
    let firstName: String?
    let lastName: String?
    let company: String?
    
    // Address
    let streetAdress: String?
    let city: String?
    let state: String?
    let zip: Int?
    
    // Access
    let areaAccess = "Amusement areas"
    
    init(birthDate: Date?, firstName: String?, lastName: String?, company: String?, streetAddress: String?, city: String?, state: String?, zip: Int?) {
        self.dateOfBirth = birthDate
        self.firstName = firstName
        self.lastName = lastName
        self.company = company
        self.streetAdress = streetAddress
        self.city = city
        self.state = state
        self.zip = zip
        
    }
    
    
}


// Guests
class ClassicGuest: Guest {
    let rideAccess = "Access all rides"
    
}

class VIPGuest: Guest {
    let rideAccess = ["Access all rides", "Skip all ride lines"]
    let discountAccess = ["- 10% discount on food","- 20% discount on merchandise"]
}


class FreeChildGuest: Guest {
    let rideAccess = "Access all rides"
}


// Employee´s

class Employee {
    // Personal information
    let dateOfBirth: Date?
    let firstName: String
    let lastName: String
    let company: String?
    
    // Address
    let streetAdress: String
    let city: String
    let state: String
    let zip: Int
    
    // Discount access
    let discountAccess = ["- 15% discount on food","- 25% discount on merchandise"]
    let rideAccess = "Access all rides"
    

    init(birthDate: Date?, firstName: String, lastName: String, company: String?, streetAddress: String, city: String, state: String, zip: Int) {
        self.dateOfBirth = birthDate
        self.firstName = firstName
        self.lastName = lastName
        self.company = company
        self.streetAdress = streetAddress
        self.city = city
        self.state = state
        self.zip = zip
        
    }
    
    

}


class HourlyFood: Employee {
     let areaAccess = ["Amusement areas", "Kitchen areas"]
}


class HourlyRideService: Employee {
    let areaAccess = ["Amusement areas", "Ride control areas"]

}


class HourlyMaintenance: Employee {
    let areaAccess = ["Amusement areas", "Kitchen areas", "Ride control areas", "Maintenance areas"]

}


class Manager {// Personal information
    let dateOfBirth: Date?
    let firstName: String
    let lastName: String
    let company: String?
    
    // Address
    let streetAdress: String
    let city: String
    let state: String
    let zip: Int
    
    // Discount access
    let discountAccess = ["- 25% discount on food","- 25% discount on merchandise"]
    let rideAccess = "Access all rides"
    
    
    init(birthDate: Date?, firstName: String, lastName: String, company: String?, streetAddress: String, city: String, state: String, zip: Int) throws {
        self.dateOfBirth = birthDate
        self.firstName = firstName
        self.lastName = lastName
        self.company = company
        self.streetAdress = streetAddress
        self.city = city
        self.state = state
        self.zip = zip
        
        
    }
    
}


enum EntrantError: Error {
    case missingName(description: String)
    case missingAdress
}








