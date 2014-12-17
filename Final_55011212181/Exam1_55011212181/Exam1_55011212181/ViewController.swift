//
//  ViewController.swift
//  Exam1_55011212181
//
//  Created by Student on 12/17/2557 BE.
//  Copyright (c) 2557 Student. All rights reserved.
//

import UIKit
import CoreData
class ViewController: UIViewController, UITableViewDataSource{

    var items = [NSManagedObject]()
    
    @IBOutlet weak var tableView: UITableView!

    @IBAction func add(sender: AnyObject) {
   

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell =
        tableView.dequeueReusableCellWithIdentifier("Cell")
            as UITableViewCell
        
        let item = items[indexPath.row]
        cell.textLabel!.text = item.valueForKey("name") as String?
        
        return cell
    }
}

