//
//  ViewController.swift
//  coreDataExample
//
//  Created by Student on 10/31/2557 BE.
//  Copyright (c) 2557 Student. All rights reserved.
//

import UIKit
import CoreData
class ViewController: UIViewController,UITableViewDataSource{
    
    var items = [NSManagedObject]()

    @IBOutlet weak var tableView: UITableView!
    @IBAction func addItem(sender: AnyObject) {
        var alert = UIAlertController(title: "New Item", message: "Add a new item", preferredStyle: .Alert)
        
        let saveAction = UIAlertAction(title: "Save", style: .Default) { (action:UIAlertAction!) -> Void in
            
            let textField = alert.textFields![0] as UITextField
            self.saveName(textField.text)
            self.tableView.reloadData()
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .Default) { (action:UIAlertAction!) -> Void in
        }
        alert.addTextFieldWithConfigurationHandler { (textField : UITextField!) -> Void in
        }
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        presentViewController(alert,
            animated: true,
            completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\"Shopping List\""
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell =
        tableView.dequeueReusableCellWithIdentifier("cell")
        as UITableViewCell
        
        let item = items[indexPath.row]
        cell.textLabel!.text = item.valueForKey("name")as String?
        return cell
    }
    func saveName(name:String){
        //1
        let appDelegate =
        UIApplication.sharedApplication().delegate as AppDelegate
        
        let managedContext = appDelegate.managedObjectContext!
        
        //2
        let entity = 
    }

}
