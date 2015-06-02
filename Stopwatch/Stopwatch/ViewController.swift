//
//  ViewController.swift
//  Stopwatch
//
//  Created by Melody Sue on 5/30/15.
//  Copyright (c) 2015 Melody Sue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func pressedPlay(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }
    
    @IBAction func pressedPause(sender: AnyObject) {
       timer.invalidate()
    }
    
    @IBAction func reset(sender: AnyObject) {
        timer.invalidate()
        count = 0
        number.text = "0"
    }
    
    
    @IBOutlet var number: UILabel!
    
    var timer = NSTimer()
    
    var count = 0
    
    func result() {
        
        count++
        
        number.text = "\(count)"
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

