//
//  PythagViewController.swift
//  swiftApp
//
//  Created by Cherian, Nathaniel on 3/13/20.
//  Copyright © 2020 Cherian, Nathaniel. All rights reserved.
//

import UIKit

class PythagViewController: UIViewController {
    
    
    @IBOutlet weak var sideOne: UITextField!
    @IBOutlet weak var sideTwo: UITextField!
    @IBOutlet weak var hypot: UILabel!
    
    var triangle = (0.0, 0.0, 0.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sideOne.text = String(triangle.0)
        sideTwo.text = String(triangle.1)
        hypot.text = String(triangle.2)

        // Do any additional setup after loading the view.
    }

    @IBAction func calculate(_ sender: Any) {
        triangle.0 = Double(sideOne.text!)!
        triangle.1 = Double(sideTwo.text!)!
        triangle.2 = sqrt((triangle.0*triangle.0) + (triangle.1 *  triangle.1))
        hypot.text = String(triangle.2)
        
    }
    
}

