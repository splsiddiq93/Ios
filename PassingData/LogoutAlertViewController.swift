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
    
    
    @IBAction func logoutYes(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
        
    }
    
    @IBAction func logoutNo(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
