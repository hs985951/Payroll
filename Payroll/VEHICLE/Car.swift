//
//  Car.swift
//  PayRollSystem
//
//  Created by MacStudent on 2018-07-26.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Car: Vehicle
{
    var numberOfSeats: Int?
    
    init(make: String, plate: String, numberOfSeats: Int)
    {
        super.init(make: make, plate: plate)
        self.numberOfSeats = numberOfSeats
    }
    
    override func printMyData() {
        print("Employee Has a CAR")
        super.printMyData()
        print("car is = \(numberOfSeats!)\t Seater")
    }
}
