//
//  CommisionBasedPartTime.swift
//  PayRollSystem
//
//  Created by MacStudent on 2018-07-26.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class CommisionBasedPartTime: PartTime {
    var commisionPercentage: Double?
    var Earnings:Double?
   
    
    func calcEarnings() -> Double {
        
        return (Double)(numberOfHoursWorked!*rate!) + ((Double(numberOfHoursWorked!*rate!))*(commisionPercentage!/100))
    }
    
    func total()
    {
        Earnings = (Double)(numberOfHoursWorked!*rate!) + ((Double(numberOfHoursWorked!*rate!))*(commisionPercentage!/100))
    }
    
    
    override func printMyData() {
        super.printMydata()
        print("Employee is Commision Based Part Time")
        print("Total Earning is \(calcEarnings())")
        vehicle?.printMyData()
        
    }
    
    
    
    
}
