//
//  SecondViewController.swift
//  PassingData
//
//  Created by user on 6/30/17.
//  Copyright © 2017 full. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var email_id: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    //let userdata = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func emailValidation(email:String) -> Bool {
        let predicate = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", predicate)
        return emailTest.evaluate(with: email)
    }
    
    let storyboar : UIStoryboard =  UIStoryboard(name: "Main", bundle: nil)
    
    @IBAction func signup(_ sender: Any) {
        
        let isemailValidated = emailValidation(email: email_id.text!)
        
        let nextViewController = self.storyboar.instantiateViewController(withIdentifier: "WelcomeViewController") as! WelcomeViewController
        
        if (userName.text?.isEmpty)! || (email_id.text?.isEmpty)! || (password.text?.isEmpty)! {
            
            let alert = UIAlertController(title: "Field is Empty", message: "Please fill all the fields to signUp", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.cancel, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
            
        } else if (isemailValidated == false) || (password.text?.characters.count)! < 6 {
            
            let alert = UIAlertController(title: "Incorrect", message: "The mail id or password provided is not valid. Try again.", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.cancel, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
            
        } else {
            //userdata.set(userName.text!, forKey: "UserName")
            
            self.present(nextViewController, animated: true, completion: nil)
            //self.navigationController?.pushViewController(nextViewController, animated: true)
            
        }
    }
    
}
