//
//  SquareViewController.swift
//  swiftApp
//
//  Created by Cherian, Nathaniel on 3/13/20.
//  Copyright © 2020 Cherian, Nathaniel. All rights reserved.
//

import UIKit

class SquareViewController: UIViewController {
    
    
    @IBOutlet weak var sideUno: UITextField!
    @IBOutlet weak var sideDos: UITextField!
    @IBOutlet weak var permLabel: UILabel!
    @IBOutlet weak var areaLabel: UILabel!
    
    var square = (0.0, 0.0, 0.0, 0.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sideUno.text = String(square.0)
        sideDos.text = String(square.1)
        permLabel.text = String(square.2)
        areaLabel.text = String(square.3)


        // Do any additional setup after loading the view.
    }

    @IBAction func calculate(_ sender: Any) {
        
        square.0 = Double(sideUno.text!)!
        square.1 = Double(sideDos.text!)!

        permLabel.text = String((square.0 * 2) + (square.1 * 2))
        areaLabel.text = String(square.0 * square.1)
        
    }
    
}
