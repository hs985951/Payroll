//
//  AddEmployeeViewController.swift
//  Payroll
//
//  Created by MacStudent on 2018-08-17.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class AddEmployeeViewController: UIViewController {

    var CBPT:CommisionBasedPartTime!
    var FBPT:FixedBasePartTime!
    var FullTime:FullTimeEmployee!
    var IR:Intern!
    var eDetails:Employee!
    var choice:[Int] = [1,2,3,4]
    
    
    @IBAction func segmentVehicletype(_ sender: Any) {
        if segmentVehicleType.selectedSegmentIndex == 0
        {
            textKerbWeight.placeholder = "Enter Kerb Weight"
        }
        else{
            textKerbWeight.placeholder = "Enter Number Of seats"
            
        }
    }
    
    @IBOutlet weak var labelIsCommissionbased: UILabel!
    @IBOutlet weak var textKerbWeight: UITextField!
    @IBOutlet weak var textMakeYear: UITextField!
    @IBOutlet weak var textEmployeeID: UITextField!
    @IBOutlet weak var textEmployeeName: UITextField!
    @IBOutlet weak var textSchoolName: UITextField!
    @IBOutlet weak var textEmployeeAge: UITextField!
    @IBOutlet weak var textBonus: UITextField!
    @IBOutlet weak var textHourWorked: UITextField!
    @IBOutlet weak var textSalary: UITextField!
    @IBOutlet weak var textRate: UITextField!
    @IBOutlet weak var textPlateNumber: UITextField!
    var viewDate: UIDatePicker?
    var car = Car(make: "CAR_MAKE", plate: "CAR_PLATE", numberOfSeats: 4)
    var bike = Motorcycle(make: "CAR_MAKE", plate: "CAR_PLATE", getKerbWeight: 4)
    @IBAction func switchSubmit(_ sender: Any) {
        
        if segmentEmployeeType.selectedSegmentIndex == 0 && switchIfCbpt.isOn{
            CBPT = CommisionBasedPartTime()
            CBPT.employeeId = Int(textEmployeeID.text!)
            CBPT.employeeName = textEmployeeName.text
            CBPT.age = Int(textEmployeeAge.text!)
            CBPT.numberOfHoursWorked = Int(textHourWorked.text!)
            CBPT.rate = Int(textRate.text!)
            CBPT.commisionPercentage = Double(textFinal.text!)
            if switchHasVehicle.isOn && segmentVehicleType.selectedSegmentIndex == 0
            {
                CBPT.vehicle = car
                car.make = textMakeYear.text
                car.plate = textPlateNumber.text
                car.numberOfSeats = Int(textKerbWeight.text!)
            }
            else if switchHasVehicle.isOn && segmentVehicleType.selectedSegmentIndex == 1{
                CBPT.vehicle = bike
                bike.make = textMakeYear.text
                bike.getKerbWeight = Int(textKerbWeight.text!)
                bike.plate = textPlateNumber.text
            }
            else
            {
                CBPT.vehicle = nil
                print("No")
            }
            eDetails = CBPT
            performSegue(withIdentifier: "submitEmployeeData", sender: self)
            print("CBPT")
        }
        else if segmentEmployeeType.selectedSegmentIndex == 0{
            FBPT = FixedBasePartTime()
            FBPT.employeeId = Int(textEmployeeID.text!)
            FBPT.employeeName = textEmployeeName.text
            FBPT.age = Int(textEmployeeAge.text!)
            FBPT.numberOfHoursWorked = Int(textHourWorked.text!)
            FBPT.rate = Int(textRate.text!)
            FBPT.fixedAmount = Int(textFinal.text!)
            if switchHasVehicle.isOn && segmentVehicleType.selectedSegmentIndex == 0
            {
                FBPT.vehicle = car
                car.make = textMakeYear.text
                car.plate = textPlateNumber.text
                car.numberOfSeats = Int(textKerbWeight.text!)
            }
            else if switchHasVehicle.isOn && segmentVehicleType.selectedSegmentIndex == 1{
                FBPT.vehicle = bike
                bike.make = textMakeYear.text
                bike.getKerbWeight = Int(textKerbWeight.text!)
                bike.plate = textPlateNumber.text
            }
            else
            {
                FBPT.vehicle = nil
                print("No")
            }
            
            performSegue(withIdentifier: "submitEmployeeData", sender: self)
            print("FBPT")
        }
        
        
        if segmentEmployeeType.selectedSegmentIndex == 1{
            FullTime = FullTimeEmployee()
            FullTime.employeeId = Int(textEmployeeID.text!)
            FullTime.employeeName = textEmployeeName.text
            FullTime.age = Int(textEmployeeAge.text!)
            FullTime.salary = Double(textSalary.text!)
            FullTime.bonus = Double(textBonus.text!)
            if switchHasVehicle.isOn && segmentVehicleType.selectedSegmentIndex == 0
            {
                FullTime.vehicle = car
                car.make = textMakeYear.text
                car.plate = textPlateNumber.text
                car.numberOfSeats = Int(textKerbWeight.text!)
            }
            else if switchHasVehicle.isOn && segmentVehicleType.selectedSegmentIndex == 1{
                FullTime.vehicle = bike
                bike.make = textMakeYear.text
                bike.getKerbWeight = Int(textKerbWeight.text!)
                bike.plate = textPlateNumber.text
            }
            else
            {
                FullTime.vehicle = nil
                print("No")
            }
            performSegue(withIdentifier: "submitEmployeeData", sender: self)
            print("Full")
        }
        
        if segmentEmployeeType.selectedSegmentIndex == 2{
            IR = Intern()
            IR.employeeId = Int(textEmployeeID.text!)
            IR.employeeName = textEmployeeName.text
            IR.age = Int(textEmployeeAge.text!)
            IR.internSchoolName = textSchoolName.text
            if switchHasVehicle.isOn && segmentVehicleType.selectedSegmentIndex == 0
            {
                IR.vehicle = car
                car.make = textMakeYear.text
                car.plate = textPlateNumber.text
                car.numberOfSeats = Int(textKerbWeight.text!)
            }
            else if switchHasVehicle.isOn && segmentVehicleType.selectedSegmentIndex == 1{
                IR.vehicle = bike
                bike.make = textMakeYear.text
                bike.getKerbWeight = Int(textKerbWeight.text!)
                bike.plate = textPlateNumber.text
            }
            else
            {
                IR.vehicle = nil
                print("No")
            }
            performSegue(withIdentifier: "submitEmployeeData", sender: self)
            print("Intern")
        }
        
    }
    
    
    
    @IBOutlet weak var textFinal: UITextField!
    @IBOutlet weak var switchIfCbpt: UISwitch!
    
    @IBAction func switchIfCBPT(_ sender: Any) {
        if switchIfCbpt.isOn
        {
            textFinal.placeholder = "Commission"
        }
        else
        {
            textFinal.placeholder = "Enter Fixed Amount"
        }
    }
    @IBOutlet weak var segmentVehicleType: UISegmentedControl!
    @IBAction func segmentSelectType(_ sender: Any) {
        if segmentEmployeeType.selectedSegmentIndex == 0
        {
            containerPartTime.isHidden = false
            containerFullTime.isHidden = true
            containerIntern.isHidden = true
            switchIfCbpt.isEnabled = true
            textFinal.isEnabled = true
            labelIsCommissionbased.isEnabled = true
        }
        else if segmentEmployeeType.selectedSegmentIndex == 1{
            containerFullTime.isHidden = false
            containerPartTime.isHidden = true
            containerIntern.isHidden = true
            switchIfCbpt.isEnabled = false
            textFinal.isEnabled = false
            labelIsCommissionbased.isEnabled = false
            
        }
        else{
            containerIntern.isHidden = false
            containerFullTime.isHidden = true
            containerPartTime.isHidden = true
            switchIfCbpt.isEnabled = false
            textFinal.isEnabled = false
            labelIsCommissionbased.isEnabled = false
        }
    }
    
    
    
    override func prepare (for segue:UIStoryboardSegue, sender:Any?){
        
        if let destVC = segue.destination as? EmployeeDetailsViewController
        {
            
            if segmentEmployeeType.selectedSegmentIndex == 0 && switchIfCbpt.isOn{
                destVC.choice = choice[0]
                
                destVC.CBPT = CBPT
            }
            else if segmentEmployeeType.selectedSegmentIndex == 0{
                destVC.choice = choice[1]
                destVC.FBPT = FBPT
            }
            if segmentEmployeeType.selectedSegmentIndex == 1{
                destVC.choice = choice[2]
                
                destVC.FullTime = FullTime
            }
            if segmentEmployeeType.selectedSegmentIndex == 2{
                destVC.choice = choice[3]
                
                destVC.IR = IR
            }
            
            
          
            
        }
    }
    
    
    
    
    
    
    @IBOutlet weak var segmentEmployeeType: UISegmentedControl!
    @IBOutlet weak var containerIntern: UIView!
    @IBOutlet weak var containerPartTime: UIView!
    @IBOutlet weak var containerFullTime: UIView!
    @IBOutlet weak var hasVehicleContainer: UIView!
    @IBOutlet weak var switchHasVehicle: UISwitch!
    @IBAction func actionHasVehicle(_ sender: Any) {
        if switchHasVehicle.isOn
        {
            hasVehicleContainer.isHidden = false
        }
        else
        {
            hasVehicleContainer.isHidden = true
        }
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewDate = UIDatePicker()
        viewDate?.datePickerMode = .date
        viewDate?.addTarget(self, action: #selector(AddEmployeeViewController.dateChanged(datePicker:)), for: .valueChanged)
        textEmployeeAge.inputView = viewDate
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(AddEmployeeViewController.viewTapped(gestureRecognizer:)))
        // Do any additional setup after loading the view.
    }
    @objc func dateChanged(datePicker: UIDatePicker){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        textEmployeeAge.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
    }
    
    
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer)  {
        view.endEditing(true)
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
