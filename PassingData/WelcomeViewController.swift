//
//  WelcomeViewController.swift
//  PassingData
//
//  Created by user on 7/2/17.
//  Copyright © 2017 full. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func logout(_ sender: Any) {
        
        let gotoConfirmlogoutPage = UIStoryboard(name: "Main", bundle: nil)
        let logoutViewController = gotoConfirmlogoutPage.instantiateViewController(withIdentifier: "LogoutAlertViewController") as! LogoutAlertViewController
        self.navigationController?.pushViewController(logoutViewController, animated: true)
        
    }
}
