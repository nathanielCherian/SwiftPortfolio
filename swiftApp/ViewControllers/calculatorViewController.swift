//
//  calculator.swift
//  swiftApp
//
//  Created by Nathan on 3/16/20.
//  Copyright © 2020 Cherian, Nathaniel. All rights reserved.
//

import UIKit

class calculatorViewController: UIViewController {

    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var oneLabel: UIButton!
    @IBOutlet weak var twoLabel: UIButton!
    @IBOutlet weak var threeLabel: UIButton!
    @IBOutlet weak var fourLabel: UIButton!
    @IBOutlet weak var fiveLabel: UIButton!
    @IBOutlet weak var sixLabel: UIButton!
    @IBOutlet weak var sevenLabel: UIButton!
    @IBOutlet weak var eightLabel: UIButton!
    @IBOutlet weak var nineLabel: UIButton!
    @IBOutlet weak var zeroLabel: UIButton!
    @IBOutlet weak var equalsLabel: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    var numString = String("")
    var numInt = Int(0)
    var numTwo = Int(0)
    var operater = String("")

    
    @IBAction func one(_ sender: Any) {
        numString = numString + "1"
        numberLabel.text = numString
    }
    
    @IBAction func two(_ sender: Any) {
        numString = numString + "2"
        numberLabel.text = numString

    }
    
    @IBAction func three(_ sender: Any) {
        numString = numString + "3"
        numberLabel.text = numString


    }
    
    @IBAction func four(_ sender: Any) {
        numString = numString + "4"
        numberLabel.text = numString


    }
    
    @IBAction func five(_ sender: Any) {
        numString = numString + "5"
        numberLabel.text = numString


    }
    
    @IBAction func six(_ sender: Any) {
        numString = numString + "6"
        numberLabel.text = numString


    }
    
    @IBAction func seven(_ sender: Any) {
        numString = numString + "7"
        numberLabel.text = numString


    }
    
    @IBAction func eight(_ sender: Any) {
        numString = numString + "8"
        numberLabel.text = numString


    }
    
    @IBAction func nine(_ sender: Any) {
        numString = numString + "9"
        numberLabel.text = numString


    }
    
    @IBAction func zero(_ sender: Any) {
        numString = numString + "0"
        numberLabel.text = numString

    }
    
    
    @IBAction func equals(_ sender: Any) {
        numTwo = Int(numString)!
        
        switch operater {
        case "ADD":
            numInt = numInt + numTwo
            numString = String(numInt)
            numberLabel.text = numString
        default:
            operater = ""
        }
        operater = ""
        numTwo = 0
    }
    
    @IBAction func plus(_ sender: Any) {
        operater = "ADD"
        numInt = Int(numString)!
        numString = "0"
    }
    
    @IBAction func clear(_ sender: Any) {
        operater = ""
        numInt = 0
        numTwo = 0
        numString = "0"
        numberLabel.text = numString
    }
    
    

    
}

