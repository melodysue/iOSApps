//
//  ViewController.swift
//  Table View
//
//  Created by Melody Sue on 5/31/15.
//  Copyright (c) 2015 Melody Sue. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate{
    
    var cellContent = ["tree", "lemon", "apple", "good"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellContent.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell1")
        cell.textLabel?.text = cellContent[indexPath.row]
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

