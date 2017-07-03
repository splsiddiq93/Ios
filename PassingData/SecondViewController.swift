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
    
    let storyboar : UIStoryboard =  UIStoryboard(name: "Main", bundle: nil)
    
    @IBAction func signup(_ sender: Any) {
        
        let isemailValidated = emailValidation(email: email_id.text!)
        
        let nextViewController = self.storyboar.instantiateViewController(withIdentifier: "WelcomeViewController") as! WelcomeViewController
        
        if (userName.text?.isEmpty)! || (email_id.text?.isEmpty)! || (password.text?.isEmpty)! {
           print("One of the field is missing")
            
        } else if (isemailValidated == false) || (password.text?.characters.count)! < 6 {
            print("Please provide valid details")

        } else {
            self.present(nextViewController, animated: true, completion: nil)
            //self.navigationController?.pushViewController(nextViewController, animated: true)

        }
    }
   
}
