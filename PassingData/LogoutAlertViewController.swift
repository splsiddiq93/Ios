//
//  LogoutAlertViewController.swift
//  PassingData
//
//  Created by user on 7/3/17.
//  Copyright © 2017 full. All rights reserved.
//

import UIKit

class LogoutAlertViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    let StoryBoard = UIStoryboard(name: "Main", bundle: nil)
    
    
    @IBAction func logoutYes(_ sender: Any) {
        
        let rootView = StoryBoard.instantiateViewController(withIdentifier: "mainPage") as! ViewController
        self.navigationController?.pushViewController(rootView, animated: true)
        UserDefaults.standard.set(false, forKey: "isLoggedIn")
        
    }
    
    @IBAction func logoutNo(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)
    }
}
