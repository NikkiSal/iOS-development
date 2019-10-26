//
//  Distance.swift
//  DistanceConverter
//
//  Created by Nikki on 2019-10-25.
//  Copyright © 2019 Myph. All rights reserved.
//

import Foundation

struct Distance {
    static let kmPerMile = 1.60934
    var miles:Double
    var km:Double {
        get {
            return Distance.toKm(miles: miles)
        }
        set(newKm) {
            miles = Distance.toMiles(km: newKm)
        }
    }

    init(miles:Double) {
        self.miles = miles  // first one is propery, second one is parameter
    }
 
    init(km:Double) {
        self.miles = Distance.toMiles(km:   km)
    }
 
    static func toKm(miles:Double) -> Double { //type method
        return miles * Distance.kmPerMile
    }

    static func toMiles(km:Double) -> Double { //type method
        return km / Distance.kmPerMile
    }
    
}
