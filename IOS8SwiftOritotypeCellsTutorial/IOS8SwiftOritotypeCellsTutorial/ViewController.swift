//
//  ViewController.swift
//  IOS8SwiftOritotypeCellsTutorial
//
//  Created by Student on 9/24/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{

    let cellIdentifier = "cellIdentifier"
    var tableData = ["Bus","Helicopter","Truck"]
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.registerClass(UITableViewCell.self,forCellReuseIdentifier:self.cellIdentifier)    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //UITableViewDataSource methods
    func  numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(self.cellIdentifier)as UITableViewCell
        
        cell.textLabel!.text = tableData[indexPath.row]
        var imageName = UIImage(named:tableData[indexPath.row])
        cell.imageView!.image = imageName
        return cell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    //UITableViewDelegate methods
    func  tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        let alert = UIAlertController(title:"Item selected",message:"you selected item \(indexPath.row)",preferredStyle:UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title:"ok",style:UIAlertActionStyle.Default,handler:{(alert:UIAlertAction!) in println("An alert of type\(alert.style.hashValue)was tapped!")
        }))
        self.presentViewController(alert,animated:true,completion:nil)
    }

}

