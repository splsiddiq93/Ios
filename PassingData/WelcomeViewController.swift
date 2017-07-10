//
//  WelcomeViewController.swift
//  PassingData
//
//  Created by user on 7/2/17.
//  Copyright © 2017 full. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    
    let storyBaord = UIStoryboard(name: "Main", bundle: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
        let user = UserDefaults.standard.string(forKey: "currentUser")
        welcomeLabel.text! = "Hi! welcome"+" "+user!

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    @IBAction func logout(_ sender: Any) {
        
        let logoutViewController = storyBaord.instantiateViewController(withIdentifier: "LogoutAlertViewController") as! LogoutAlertViewController
        self.navigationController?.pushViewController(logoutViewController, animated: true)
    }
}
