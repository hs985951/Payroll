//
//  Intern.swift
//  PayRollSystem
//
//  Created by MacStudent on 2018-07-26.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Intern: Employee  {
    var internSchoolName: String?  
    override func  printMyData() {
         super.printMyData()
        print("Employee is Intern Type")
        print("Intern School name is \(internSchoolName!)")
       if(vehicle == nil)
       {
        print("Employee has no vehicle")
        }
        vehicle?.printMyData()
    }
    
    
}
