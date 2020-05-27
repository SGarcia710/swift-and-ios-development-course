//
//  Car.swift
//  FabricaAutomoviles
//
//  Created by Sebastián on 27/05/20.
//  Copyright © 2020 Sebastian Garcia. All rights reserved.
//

import Foundation

class Car {
    
    var color = "Gray"
    let numberOfTires = 4
    var price = 5000
    var fuelPercentage = 100

    func turnOn() -> Bool {
        return true
    }
    
    func turnOff() -> Bool {
       return false
    }
    
    func speedUp() -> String {
        if fuelPercentage >= 10 {
            fuelPercentage -= 10
            return "Acceleration success"
        }
        return "You're out of fuel"
    }
    
    func refilFuel() -> String {
        fuelPercentage = 100
        return "Refil success"
    }
}
