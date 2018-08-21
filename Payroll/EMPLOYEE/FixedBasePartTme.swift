//
//  FixedBaseParttTme.swift
//  PayRollSystem
//
//  Created by MacStudent on 2018-07-26.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class FixedBasePartTime: PartTime {
    var fixedAmount: Int?
    var Earnings:Double?
   
    
    func calcEarning() -> Double {

        return (Double)(rate!*numberOfHoursWorked!) + (Double)(fixedAmount!)
    }
    
    func total()
    {
        Earnings = (Double)(rate!*numberOfHoursWorked!) + (Double)(fixedAmount!)
    }
    
    override func printMyData() {
        
        super.printMydata()
        print("Employee is PartTime / Fixed Amt")
        print("Total Earning is \(calcEarning())")
        
        
    }
    
    }
