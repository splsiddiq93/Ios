//
//  SecondViewController.swift
//  PassingData
//
//  Created by user on 6/30/17.
//  Copyright © 2017 full. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var incomingtextlabel: UILabel!
    
    var incomingText : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        incomingtextlabel.text = incomingText
        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
