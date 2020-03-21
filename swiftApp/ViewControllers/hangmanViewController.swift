//
//  hangmanViewController.swift
//  swiftApp
//
//  Created by Nathan on 3/17/20.
//  Copyright © 2020 Cherian, Nathaniel. All rights reserved.
//

import UIKit

class hangmanViewController: UIViewController {
    
    @IBOutlet weak var head: UIImageView!
    @IBOutlet weak var body: UIImageView!
    @IBOutlet weak var leftLeg: UIImageView!
    @IBOutlet weak var rightLeg: UIImageView!
    @IBOutlet weak var leftArm: UIImageView!
    @IBOutlet weak var rightArm: UIImageView!
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var usedLettersLabel: UILabel!
    @IBOutlet weak var inputField: UITextField!
    
    
    var incorrectGuess = Int(-1)
    var words : [String] = ["hello", "computer", "door", "hangman"]
    var rand = Int(0) //temperary will make random in fuction start
    var myWord : [String] = [] // this array will be editable and displayed
    var wordRand : [Character] = []
    var guesNum = Int(0) // num of guesses passes to controller

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        restart()
        start()
       // controller(val: 4)
    }
    
    func controller(val: Int) -> Bool {
        
        switch val {
        case 5:
            rightArm.isHidden = false
            return false
        case 4:
            leftArm.isHidden = false
        case 3:
            rightLeg.isHidden = false
        case 2:
            leftLeg.isHidden = false
        case 1:
            body.isHidden = false
        case 0:
            head.isHidden = false
        default:
            return true
        }
        
        return true;
    }
    
    func restart() -> Void {
        head.isHidden = true
        body.isHidden = true
        leftArm.isHidden = true
        rightArm.isHidden = true
        leftLeg.isHidden = true
        rightLeg.isHidden = true
        wordLabel.text = ""
    }
    
    
    func start() -> Void {
        guesNum = 0//reset to 0
        rand = 3 // initialize rand
        myWord = []
        wordRand = []
        wordRand = Array(words[rand])
        
        for character in wordRand{
            myWord.append("_ ")
        }
        
        var str: String = ""
        for string in myWord{
            str = str + string
        }
        
        wordLabel.text = str
    }
    
    @IBAction func inpu(_ sender: Any) {
        let guessedString = inputField.text
        let length = guessedString?.count
        if(length! >= 1){
            guessCheck(strlength: length!, guess: guessedString!)
        }
        
        var str: String = ""
        for string in myWord{
            str = str + string
        }
        
        wordLabel.text = str
        inputField.text = ""
    }
    

    
    
    
    
    func guessCheck(strlength: Int, guess: String) -> Void {
        
        if(strlength == 1){
            var test = 0
            for i in 0...(wordRand.count - 1){
                
                if guess == String(wordRand[i]) {
                    myWord[i] = guess + " "
                    test = 1
                }else if i == wordRand.count - 1{
                    if test == 0{
                        if controller(val: guesNum) == false{
                            restart()
                            start()
                        }
                        guesNum+=1
                    }
                }
            }
    
        }else{
            
            
            
        }
    }
    
    
    
    
    
}

