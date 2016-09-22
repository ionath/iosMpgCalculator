//
//  FuelPoint.swift
//  MpgCalculator
//
//  Created by John Franklin on 22/09/2016.
//  Copyright © 2016 John Franklin. All rights reserved.
//

import Foundation

class FuelPoint {
    // MARK: Properties
    var distance: Float
    var fuelUsed: Float
    var date: Date
    
    init?(distance: Float, fuelUsed: Float, date: Date) {
        self.distance = distance
        self.fuelUsed = fuelUsed
        self.date = date
        
        if (distance <= 0.0 || fuelUsed <= 0.0 ) {
            return nil
        }
    }
}
