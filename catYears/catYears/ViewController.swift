//
//  ViewController.swift
//  catYears
//
//  Created by Melody Sue on 5/27/15.
//  Copyright (c) 2015 Melody Sue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var inputAge: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        var enteredAge = inputAge.text.toInt()
        
        if enteredAge != nil {
        
            var catYears = enteredAge! * 7
        
            resultLabel.text = "Your cat is \(catYears) in cat years"
        }
        else {
            resultLabel.text = "Please enter a whole number"
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

