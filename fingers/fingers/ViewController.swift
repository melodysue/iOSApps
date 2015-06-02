//
//  ViewController.swift
//  fingers
//
//  Created by Melody Sue on 5/28/15.
//  Copyright (c) 2015 Melody Sue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var userInput: UITextField!
    
    @IBOutlet var output: UILabel!
    
    @IBAction func enterPressed(sender: AnyObject) {
        var computerChoice = arc4random_uniform(6)
        if userInput.text.toInt() == nil || userInput.text.toInt() > 5{
            output.text = "Please enter a value between 0 and 5"
        }
        else if Int(computerChoice) == userInput.text.toInt(){
            output.text = "\(computerChoice)... You are correct!"
        }
        else{
            output.text = "Wrong! It was \(computerChoice). I'm choosing a new number"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

