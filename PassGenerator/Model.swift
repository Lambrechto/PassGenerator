//
//  Model.swift
//  PassGenerator
//
//  Created by Daniel Lambrecht on 11/03/2017.
//  Copyright © 2017 Lambrecht Design. All rights reserved.
//

import Foundation

// Personal info

protocol FullyNamed {
    var firstName: String? { get }
    var lastName: String? { get }
    var streetAddress: String? { get }
    var city: String? { get }
    var state: String? { get }
    var zip: Int? { get }
    var dateOfBirth: Date? { get }
}


struct Person: FullyNamed {
    var firstName: String?
    var lastName: String?
    var streetAddress: String?
    var city: String?
    var state: String?
    var zip: Int?
    var dateOfBirth: Date?
}


// Entrant accesses
struct areaAccesses {
    var amusementAccess: Bool
    var kitchenAccess: Bool
    var rideControlAccess: Bool
    var maintenanceAccess: Bool
    var officeAccess: Bool
}

struct rideAccesses {
    var allRides: Bool
    var skipLines: Bool
}

struct discountAccesses {
    var foodDiscount: Int?
    var merchDiscount: Int?
}


protocol AreaAccess {
    func areaAccess() -> areaAccesses
}

protocol RideAccess {
    func rideAccess() -> rideAccesses
}

protocol DiscountAccess {
    func discountAccess() -> discountAccesses
}

protocol Entrant: AreaAccess, RideAccess, DiscountAccess {
    
}


// Entrant types and their accesses.
enum guest: Entrant {
    case Classic, Child, VIP
    func areaAccess() -> areaAccesses {
        return areaAccesses(amusementAccess: true, kitchenAccess: false, rideControlAccess: false, maintenanceAccess: false, officeAccess: false)
    }
    
    
    func rideAccess() -> rideAccesses {
        switch self {
        case .Classic, .Child:
            return rideAccesses(allRides: true, skipLines: false)
        case .VIP:
            return rideAccesses(allRides: true, skipLines: true)
        }
        
    }
    
    func discountAccess() -> discountAccesses {
        switch self {
        case .Classic, .Child:
            return discountAccesses(foodDiscount: nil, merchDiscount: nil)
        case .VIP:
            return discountAccesses(foodDiscount: 10, merchDiscount: 20)
        }
    }
    
}


enum employee: Entrant {
    case Food, Ride, Maintenance, Manager
    func areaAccess() -> areaAccesses {
        switch self {
        case .Food:
            return areaAccesses(amusementAccess: true, kitchenAccess: true, rideControlAccess: false, maintenanceAccess: false, officeAccess: false)
        case .Ride:
            return areaAccesses(amusementAccess: true, kitchenAccess: false, rideControlAccess: true, maintenanceAccess: false, officeAccess: false)
        case .Maintenance:
            return areaAccesses(amusementAccess: true, kitchenAccess: true, rideControlAccess: true, maintenanceAccess: true, officeAccess: false)
        case .Manager:
            return areaAccesses(amusementAccess: true, kitchenAccess: true, rideControlAccess: true, maintenanceAccess: true, officeAccess: true)
        }
    }
    
    func rideAccess() -> rideAccesses {
        return rideAccesses(allRides: true, skipLines: false)
    }
    
    func discountAccess() -> discountAccesses {
        switch self {
        case .Food, .Ride, .Maintenance:
            return discountAccesses(foodDiscount: 15, merchDiscount: 25)
        case .Manager:
            return discountAccesses(foodDiscount: 25, merchDiscount: 25)
        }
    }
    
}
























