//
//  ViewController.swift
//  Times Tables
//
//  Created by Melody Sue on 6/1/15.
//  Copyright (c) 2015 Melody Sue. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate{

    var dummySliderValue = 10
    
    @IBOutlet var slider: UISlider!
    
    @IBOutlet var displayedValue: UILabel!
    
    @IBAction func sliderValueChanged(sender: UISlider) {
        var currentValue = Int(sender.value)
        displayedValue.text = "\(currentValue)"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        
        cell.textLabel?.text = "\(dummySliderValue) X \(indexPath.row + 1) = \(dummySliderValue*(indexPath.row + 1))"
        
        
        return cell
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

