//
//  Vehicle.swift
//  PayRollSystem
//
// Created by MacStudent on 2018-07-26.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

// vehicle class implementing IPrintable Protocol
class Vehicle: IPrintable
{
    var make: String?
    var plate: String?
    
    init(make: String, plate: String)
    {
        self.make = make
        self.plate = plate
    }
    
    func printMyData() {
        print("Make Of car is = \(make!) \nPlate of car is = \(plate!)")
    }
}
