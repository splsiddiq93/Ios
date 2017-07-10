//
//  SettingsViewController.swift
//  PassingData
//
//  Created by user on 7/10/17.
//  Copyright © 2017 full. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    let storyBaord = UIStoryboard(name: "Main", bundle: nil)
    
    @IBAction func logout(_ sender: Any) {
        let logoutViewController = storyBaord.instantiateViewController(withIdentifier: "LogoutAlertViewController") as! LogoutAlertViewController
        self.navigationController?.pushViewController(logoutViewController, animated: true)
   
    }
    
}
