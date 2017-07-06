//
//  LoginViewController.swift
//  PassingData
//
//  Created by user on 7/4/17.
//  Copyright © 2017 full. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func userExists(name: String, Userpassword: String) ->Bool {
        
        let username = UserDefaults.standard.string(forKey: name)
        let authenticate = UserDefaults.standard.string(forKey: Userpassword)
        if username! == userName.text! && password.text! == authenticate! {
            return true
        }
        return false
    }
    let welcomePage = UIStoryboard(name: "Main", bundle: nil)
    
    let userdefault = UserDefaults.standard
    
    @IBAction func Login(_ sender: UIButton) {
        let userexists = userExists(name: "User", Userpassword: "Password")
        if userexists {
            let welcome = welcomePage.instantiateViewController(withIdentifier: "WelcomeViewController") as! WelcomeViewController
            self.navigationController?.pushViewController(welcome, animated: true)
            userdefault.set(true, forKey: "isLoggedIn")
        } else {
            let alert = UIAlertController(title: "Invalid Details", message: "Please provide valid userName and password", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.cancel, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
        }
    }
    
}
