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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func emailValidation(email:String) -> Bool {
        let predicate = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", predicate)
        return emailTest.evaluate(with: email)
    }
    
    let storyboardObject : UIStoryboard =  UIStoryboard(name: "Main", bundle: nil)
    
    @IBAction func signup(_ sender: Any) {
        
        let isemailValidated = emailValidation(email: email_id.text!)
        
        let nextViewController = self.storyboardObject.instantiateViewController(withIdentifier: "WelcomeViewController") as! WelcomeViewController
        
        if (userName.text?.characters.count == 0) || (email_id.text?.characters.count == 0) || (password.text?.characters.count == 0)  {
            
            let alert = UIAlertController(title: "Field is Empty", message: "Please fill all the fields to signUp", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.cancel, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
            
        } else if let minCharacters = password.text?.characters.count, minCharacters < 6 || isemailValidated == false {
            
            let alert = UIAlertController(title: "Invalid", message: "Please proivide valid details to signUp", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.cancel, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
            
        } else {
            self.navigationController?.pushViewController(nextViewController, animated: true)
            
        }
        
    }
    
}
