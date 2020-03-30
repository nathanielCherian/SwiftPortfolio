//
//  anagrams.swift
//  swiftApp
//
//  Created by Nathan on 3/29/20.
//  Copyright © 2020 Cherian, Nathaniel. All rights reserved.
//

import UIKit

class anagramsViewController: UIViewController {

    @IBOutlet weak var but0: UIButton!
    @IBOutlet weak var but1: UIButton!
    @IBOutlet weak var but2: UIButton!
    @IBOutlet weak var but3: UIButton!
    @IBOutlet weak var but4: UIButton!
    @IBOutlet weak var but5: UIButton!
    @IBOutlet weak var but6: UIButton!
    
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var correctWordsLabel: UILabel!
    
    
    var all_words : [String] = []
    var reference_words : [String] = []
    var chosen_word : String = ""
    var chosen_array : [Character] = []
    var building_word : String = ""
    var complete_words : String = ""
    var used_words : [String] = []
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        assignWords()
        assignDict()
        
        start()
        
    }
    
    
    func start() -> Void {
        chosen_word = all_words[Int.random(in: 0...1370)]
        chosen_array = Array(chosen_word)
        used_words = []
        building_word = ""
        
        
        but0.setTitle(String(chosen_array[0]), for: .normal)
        but1.setTitle(String(chosen_array[1]), for: .normal)
        but2.setTitle(String(chosen_array[2]), for: .normal)
        but3.setTitle(String(chosen_array[3]), for: .normal)
        but4.setTitle(String(chosen_array[4]), for: .normal)
        but5.setTitle(String(chosen_array[5]), for: .normal)
        but6.setTitle(String(chosen_array[6]), for: .normal)
        progressLabel.text = "";
        correctWordsLabel.text = "";
        
    }
    
    
    func checker() -> Void {
        if reference_words.contains(building_word) == true {
            if used_words.contains(building_word) == false {
                used_words.append(building_word)
                correctWordsLabel.text = building_word + "\n" + correctWordsLabel.text!
                building_word = ""
                progressLabel.text = ""
                
                but0.setTitleColor(UIColor.black, for: .normal)
                but0.isUserInteractionEnabled = true
                but1.setTitleColor(UIColor.black, for: .normal)
                but1.isUserInteractionEnabled = true
                but2.setTitleColor(UIColor.black, for: .normal)
                but2.isUserInteractionEnabled = true
                but3.setTitleColor(UIColor.black, for: .normal)
                but3.isUserInteractionEnabled = true
                but4.setTitleColor(UIColor.black, for: .normal)
                but4.isUserInteractionEnabled = true
                but5.setTitleColor(UIColor.black, for: .normal)
                but5.isUserInteractionEnabled = true
                but6.setTitleColor(UIColor.black, for: .normal)
                but6.isUserInteractionEnabled = true
            }
        }
        
    }
    
    
    
    @IBAction func but_0(_ sender: Any) {
        building_word = building_word + String(chosen_array[0])
        progressLabel.text = building_word
        but0.setTitleColor(UIColor.systemGray, for: .normal)
        but0.isUserInteractionEnabled = false
        checker()
    }
    
    @IBAction func but_1(_ sender: Any) {
        building_word = building_word + String(chosen_array[1])
        progressLabel.text = building_word
        but1.setTitleColor(UIColor.systemGray, for: .normal)
        but1.isUserInteractionEnabled = false
        checker()

    }
    
    @IBAction func but_2(_ sender: Any) {
        building_word = building_word + String(chosen_array[2])
        progressLabel.text = building_word
        but2.setTitleColor(UIColor.systemGray, for: .normal)
        but2.isUserInteractionEnabled = false
        checker()

    }
    
    @IBAction func but_3(_ sender: Any) {
        building_word = building_word + String(chosen_array[3])
        progressLabel.text = building_word
        but3.setTitleColor(UIColor.systemGray, for: .normal)
        but3.isUserInteractionEnabled = false
        checker()

    }
    
    @IBAction func but_4(_ sender: Any) {
        building_word = building_word + String(chosen_array[4])
        progressLabel.text = building_word
        but4.setTitleColor(UIColor.systemGray, for: .normal)
        but4.isUserInteractionEnabled = false
        checker()

    }
    
    @IBAction func but_5(_ sender: Any) {
        building_word = building_word + String(chosen_array[5])
        progressLabel.text = building_word
        but5.setTitleColor(UIColor.systemGray, for: .normal)
        but5.isUserInteractionEnabled = false
        checker()

    }
    
    @IBAction func but_6(_ sender: Any) {
        building_word = building_word + String(chosen_array[6])
        progressLabel.text = building_word
        but6.setTitleColor(UIColor.systemGray, for: .normal)
        but6.isUserInteractionEnabled = false
        checker()

    }
    
    
    @IBAction func clear(_ sender: Any) {
        building_word = ""
        progressLabel.text = ""
        
        but0.setTitleColor(UIColor.black, for: .normal)
        but0.isUserInteractionEnabled = true
        but1.setTitleColor(UIColor.black, for: .normal)
        but1.isUserInteractionEnabled = true
        but2.setTitleColor(UIColor.black, for: .normal)
        but2.isUserInteractionEnabled = true
        but3.setTitleColor(UIColor.black, for: .normal)
        but3.isUserInteractionEnabled = true
        but4.setTitleColor(UIColor.black, for: .normal)
        but4.isUserInteractionEnabled = true
        but5.setTitleColor(UIColor.black, for: .normal)
        but5.isUserInteractionEnabled = true
        but6.setTitleColor(UIColor.black, for: .normal)
        but6.isUserInteractionEnabled = true
        
    } 
    
    
    
    
    
    
    
    func assignWords() -> Void{
        let fileURLProject = Bundle.main.path(forResource: "sevenLetters", ofType: "txt")
        var readStringProject = ""
        do{
            readStringProject = try String(contentsOfFile: fileURLProject!, encoding: String.Encoding.utf8)
        }catch let error as NSError{
            print("Failed to read")
            print(error)
        }
        
        let stringProjArr = readStringProject.components(separatedBy: "\n")
        all_words = stringProjArr
        
        print(stringProjArr[0])
    }
    
    func assignDict() -> Void {
        let fileURLProject = Bundle.main.path(forResource: "dictionarySix", ofType: "txt")
        var readStringProject = ""
        do{
            readStringProject = try String(contentsOfFile: fileURLProject!, encoding: String.Encoding.utf8)
        }catch let error as NSError{
            print("Failed to read")
            print(error)
        }
        
        let stringProjArr = readStringProject.components(separatedBy: "\n")
        reference_words = stringProjArr
        
        print(stringProjArr[0])
    }
    
    
}
