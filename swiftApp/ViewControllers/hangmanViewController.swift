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
    @IBOutlet var restartButton: UIButton!
    
    
    var incorrectGuess = Int(-1)
    var words : [String] = []
    var rand = Int(0) //temperary will make random in fuction start
    var myWord : [String] = [] // this array will be editable and displayed
    var wordRand : [Character] = []
    var guesNum = Int(0) // num of guesses passes to controller
    var badLetters: [String] = []

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        restartButton.isHidden = true
        
        //usedLettersLabel.text = "h" + "\n" + "j"
        let fileURLProject = Bundle.main.path(forResource: "wordlist", ofType: "txt")
        var readStringProject = ""
        do{
            readStringProject = try String(contentsOfFile: fileURLProject!, encoding: String.Encoding.utf8)
        }catch let error as NSError{
            print("Failed to read")
            print(error)
        }
        
        let stringProjArr = readStringProject.components(separatedBy: "\n")
        words = stringProjArr
        
        print(stringProjArr[2837])

        //print(readStringProject)
        
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
        usedLettersLabel.text = ""
        
        
        incorrectGuess = Int(-1)
        rand = Int(0) //temperary will make random in fuction start
        myWord = [] // this array will be editable and displayed
        guesNum = Int(0) // num of guesses passes to controller
        badLetters = []
    }
    
    
    func start() -> Void {
        guesNum = 0//reset to 0
        rand = Int.random(in: 0...4095) // initialize rand
        myWord = []
        wordRand = []
        wordRand = Array(words[rand])
        print(words[rand])
        
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
        
        
        var usedStr: String = ""
        for string in badLetters{
            usedStr = usedStr + string
        }
        
        usedLettersLabel.text = usedStr
        wordLabel.text = str
        inputField.text = ""
        
        if str.contains("_") == false{
            restartButton.isHidden = false
        }
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
                            break;
                        }
                        guesNum+=1
                        badLetters.append(guess + "\n")

                    }
                }
            }
    
        }else{
            
            
        }
    }
    
    
    
    @IBAction func restartButto(_ sender: Any) {
        
        restart()
        start()
        
        restartButton.isHidden = true
        
    }
    
    
    
    
    
}

