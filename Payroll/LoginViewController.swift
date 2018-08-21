//
//  LoginViewController.swift
//  Payroll
//
//  Created by MacStudent on 2018-08-20.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var enterpasswordText: UITextField!
    @IBOutlet weak var enteremailText: UITextField!
    
    @IBOutlet weak var remembermeSwitch: UISwitch!
    
    @IBAction func gotohomebtn(_ sender: UIButton) {
        let emailCheck = isValidEmail(testStr: enteremailText.text!)
        if enteremailText.text == "admin@gmail.com" && enterpasswordText.text == "1234" && emailCheck == true
        {
            let defaults = UserDefaults.standard
            if remembermeSwitch.isOn{
                
                defaults.set(enteremailText.text, forKey: "emailUD")
                defaults.set(enterpasswordText.text, forKey: "passwordUD")
            }else
            {
                defaults.removeObject(forKey: "emailUD")
                defaults.removeObject(forKey: "passwordUD")
            }
            performSegue(withIdentifier: "HomeViewController", sender: self)
        }
        else
        {
            altmsg(getmessage: "Invalid Username/Password")
        }
        
    }
    
    func isValidEmail(testStr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    
    func altmsg(getmessage:String)
    {
        let myalert = UIAlertController(title: "Alert", message: getmessage, preferredStyle: UIAlertControllerStyle.alert)
        let ok = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
        
        myalert.addAction(ok)
        
        self.present(myalert, animated: true , completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
