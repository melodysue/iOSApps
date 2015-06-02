//
//  ViewController.swift
//  prime
//
//  Created by Melody Sue on 5/29/15.
//  Copyright (c) 2015 Melody Sue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userInput: UITextField!
    
    @IBOutlet var result: UILabel!
    
    @IBAction func didPress(sender: AnyObject) {
        var input = userInput.text.toInt()
        if input == nil{
            result.text = "Please enter a number"
        }
        else{
            for var i = 2; i < input; ++i {
                if input! % i == 0{
                    result.text = "It's not a prime!"
                    return
                }
            }
            result.text = "It is a prime!"
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

