//
//  File.swift
//  PayRollSystem
//
//  Created by MacStudent on 2018-07-26.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Motorcycle: Vehicle
{
    var getKerbWeight: Int?
    
    init(make: String, plate: String, getKerbWeight: Int)
    {
        super.init(make: make, plate: plate)
        self.getKerbWeight = getKerbWeight
    }
    
    override func printMyData()
    {
        print("Employee Has a Motorcycle")
        super.printMyData()
        print("Weight of MotorCycle is = \(getKerbWeight!)")
    }
}
