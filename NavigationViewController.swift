//
//  NavigationViewController.swift
//  PassingData
//
//  Created by user on 7/5/17.
//  Copyright © 2017 full. All rights reserved.
//

import UIKit

class NavigationViewController: UINavigationController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let rootViewNew = storyBoard.instantiateViewController(withIdentifier: "mainPage") as! ViewController
        let userStatus = UserDefaults.standard.bool(forKey: "isLoggedIn")

        if userStatus ==  false {
            
            self.setViewControllers([rootViewNew], animated: true)
            
        }
    }
}
