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
        
    }
    
    func userExists(data: String) ->Bool {
        
        var currentUser = String(), currentPassWord = String()
        
        let userDetails = UserDefaults.standard.dictionary(forKey: data)
        UserDefaults.standard.set(userName.text!, forKey: "currentUser")
        guard let tempDetails = userDetails else {
            return false
        }
        
        for (key, value) in tempDetails{
            if key == "username" {
                currentUser = value as! String
            } else if key == "password" {
                currentPassWord = value as! String
            }
        }
        if let user = userName.text, let userPassword = password.text, currentUser == user && currentPassWord == userPassword {
            
            return true
        }
        return false
    }
    
    let welcomePage = UIStoryboard(name: "Main", bundle: nil)
    
    
    @IBAction func Login(_ sender: UIButton) {
        
        let userexists = userExists(data: userName.text!)
        if userexists {
            let welcome = welcomePage.instantiateViewController(withIdentifier: "WelcomeViewController") as! WelcomeViewController
            self.navigationController?.pushViewController(welcome, animated: true)
            UserDefaults.standard.set(true, forKey: "isLoggedIn")
        } else {
            let alert = UIAlertController(title: "Invalid Details", message: "Please provide valid userName and password", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.cancel, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
        }
    }
    
}
