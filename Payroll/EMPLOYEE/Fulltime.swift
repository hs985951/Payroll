//
//  Fulltime.swift
//  PayRollSystem
//
//  Created by MacStudent on 2018-07-26.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class FullTimeEmployee: Employee {
    var salary: Double?
    var bonus: Double?
    
    
    
    func calcEarnings() -> Double {
    return salary!*((100+bonus!)/100)
    }
    
    
    
    
    
        override func printMyData() {
        super.printMyData()
            print("Employee Type is Full Time")
        print("Employee total Salary is \(calcEarnings())")
    
    }
    
    
}
