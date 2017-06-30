//
//  ViewController.swift
//  PassingData
//
//  Created by user on 6/30/17.
//  Copyright © 2017 full. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?)  {
//        let SecondViewController = segue.destination as? SecondViewController
//        SecondViewController?.incomingText = emailTextField.text!
//    }
//   
    @IBAction func login(_ sender: UIButton) {
        
        print("hello")
        
    //SecondViewController?.incomingText = emailTextField.text!
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let viewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        
        //self.present(SecondViewController, animated: true, completion: nil)
        self.present(viewController!, animated: true, completion: nil)
        
        viewController!.incomingText = emailTextField.text!
        
    }

}

