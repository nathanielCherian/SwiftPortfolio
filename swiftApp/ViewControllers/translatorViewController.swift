//
//  translatorViewController.swift
//  swiftApp
//
//  Created by Nathan on 3/14/20.
//  Copyright © 2020 Cherian, Nathaniel. All rights reserved.
//

import UIKit


class translatorViewController: UIViewController {

    @IBOutlet weak var piglatLabel: UILabel!
    @IBOutlet weak var shorthandLabel: UILabel!
    @IBOutlet weak var inputField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        piglatLabel.text = ""
        shorthandLabel.text = ""
    }
    
    
    @IBAction func textAction(_ sender: Any) {

               
              // piglatLabel.text = "hello"
               
               
               let cString = strdup(inputField.text)
               //let string = String(cString: cString!) // String

               let str = pigLatti(cString)
               let string = String(cString: str!)
               
               piglatLabel.text = string
        
    }
    
    
    
    
    /*
     func makeCString(from str: String) -> UnsafeMutablePointer<Int8> {
        let count = str.utf8.count + 1
        let result = UnsafeMutablePointer<Int8>.allocate(capacity: count)
        str.withCString { (baseAddress) in
            // func initialize(from: UnsafePointer<Pointee>, count: Int)
            result.initialize(from: baseAddress, count: count)
        }
        return result
    } */
    
}



