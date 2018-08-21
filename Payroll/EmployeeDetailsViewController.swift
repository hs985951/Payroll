//
//  EmployeeDetailsViewController.swift
//  Payroll
//
//  Created by MacStudent on 2018-08-17.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class EmployeeDetailsViewController: UIViewController {

    @IBOutlet weak var labelEmployeeID: UILabel!
    @IBOutlet weak var labelEmployeeType: UILabel!
    @IBOutlet weak var labelEmployeeName: UILabel!
    @IBOutlet weak var labelEmployeeAge: UILabel!
    @IBOutlet weak var labelBlock2Section4: UILabel!
    @IBOutlet weak var labelBlock2Section3: UILabel!
    @IBOutlet weak var labelBlock2Section2: UILabel!
    @IBOutlet weak var labelBlock2section1: UILabel!
    @IBOutlet weak var labelVehicle: UILabel!
    @IBOutlet weak var labelmakeIs: UILabel!
    @IBOutlet weak var _labelplateno: UILabel!
    @IBOutlet weak var labelModel: UILabel!
    @IBOutlet weak var _labelmakeis: UILabel!
    @IBOutlet weak var labelPlateNo: UILabel!
    @IBOutlet weak var _labelBlock2section1: UILabel!
    @IBOutlet weak var _labelBlock2Section2: UILabel!
    @IBOutlet weak var lblTotal: UILabel!
    @IBOutlet weak var lblSalary: UILabel!
    @IBOutlet weak var _labelBlock2Section4: UILabel!
    var CBPT:CommisionBasedPartTime!
    var FBPT:FixedBasePartTime!
    var FullTime:FullTimeEmployee!
    var IR:Intern!
    var PartTime:PartTime!
    var choice:Int!
    
    @IBOutlet weak var labelHourWorked: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        

        switch choice
        {
            
        case 1:
            if CBPT.employeeId != nil
            {
                labelEmployeeID.text = String(CBPT.employeeId!)
            }
            else
            {
                labelEmployeeID.text = "Nil"
            }
            labelEmployeeName.text = String(CBPT.employeeName!)
            labelEmployeeAge.text = String(CBPT.age!)
            labelEmployeeType.text = "EMPLOYEE IS COMMISSION BASED PART TIME"
            labelBlock2section1.text = "Hours Worked"
            labelBlock2Section2.text = "Rate"
            labelBlock2Section4.text = "Commission"
            _labelBlock2section1.text = String(CBPT.numberOfHoursWorked!)
            _labelBlock2Section2.text = String(CBPT.rate!)
            _labelBlock2Section4.text = String(CBPT.commisionPercentage!)
            lblSalary.text = String(CBPT.calcEarnings())
            if CBPT.vehicle != nil
            {
                labelmakeIs.text = String((CBPT.vehicle?.make!)!)
                labelPlateNo.text = String((CBPT.vehicle?.plate!)!)
                
            }
            else
            {
                labelVehicle.text = "Employee Don't Have a Vehicle"
                labelPlateNo.isHidden = true
                labelmakeIs.isHidden = true
                _labelmakeis.isHidden = true
                _labelplateno.isHidden = true
            }
            break
        case 2:
            if FBPT.employeeId != nil
            {
                labelEmployeeID.text = String(FBPT.employeeId!)
            }
            else{
                labelEmployeeID.text = "nil"
            }
            labelEmployeeName.text = String(FBPT.employeeName!)
            labelEmployeeAge.text = String(FBPT.age!)
            labelEmployeeType.text = "EMPLOYEE IS FIXED BASED PART TIME"
            labelBlock2section1.text = "Hours Worked"
            labelBlock2Section2.text = "Rate"

            labelBlock2Section4.text = "Enter Fixed Amount"
            _labelBlock2section1.text = String(FBPT.numberOfHoursWorked!)
            _labelBlock2Section2.text = String(FBPT.rate!)
            _labelBlock2Section4.text = String(FBPT.fixedAmount!)
            
            if FBPT.vehicle != nil
            {
                labelmakeIs.text = String((FBPT.vehicle?.make!)!)
                labelPlateNo.text = String((FBPT.vehicle?.plate!)!)
            }
            else
            {
                labelVehicle.text = "Employee Don't Have a Vehicle"
                labelPlateNo.isHidden = true
                labelmakeIs.isHidden = true
                _labelmakeis.isHidden = true
                _labelplateno.isHidden = true
            }
            
            break
        case 3:
            if FullTime.employeeId != nil
            {
                labelEmployeeID.text = String(FullTime.employeeId!)
            }
            else{
                labelEmployeeID.text = "nil"
                
            }
            labelEmployeeName.text = String( FullTime.employeeName!)
            labelEmployeeAge.text = String(FullTime.age!)
            labelEmployeeType.text = "Employee is Full Time"
            _labelBlock2section1.text = "Salary"
            _labelBlock2Section2.text = "Bonus"
            _labelBlock2Section4.text = "Calculated Earnings"
            labelBlock2section1.text = String(FullTime.salary!)
            labelBlock2Section2.text = String(FullTime.bonus!)
            labelHourWorked.text = "#"
            
            if FullTime.vehicle != nil
            {
                labelmakeIs.text = String((FullTime.vehicle?.make!)!)
                labelPlateNo.text = String((FullTime.vehicle?.plate!)!)
            }
            else
            {
                labelVehicle.text = "Employee Don't Have a Vehicle"
                labelPlateNo.isHidden = true
                labelmakeIs.isHidden = true
                _labelmakeis.isHidden = true
                _labelplateno.isHidden = true
            }
            
        case 4:
            labelEmployeeID.text = String(IR.employeeId!)
            labelEmployeeName.text = String(IR.employeeName!)
            labelEmployeeAge.text = String(IR.age!)
            _labelBlock2section1.text = String(IR.internSchoolName!)
            labelBlock2section1.text = "School Name"
            labelBlock2Section2.isHidden = true
            labelBlock2Section4.isHidden = true
            _labelBlock2Section2.isHidden = true
            _labelBlock2Section4.isHidden = true
            if IR.vehicle != nil
            {
                labelmakeIs.text = String((IR.vehicle?.make!)!)
                labelPlateNo.text = String((IR.vehicle?.plate!)!)
            }
            else
            {
                labelVehicle.text = "Employee Don't Have a Vehicle"
                labelPlateNo.isHidden = true
                labelmakeIs.isHidden = true
                _labelmakeis.isHidden = true
                _labelplateno.isHidden = true
            }
        default: break
            
            
        }
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
