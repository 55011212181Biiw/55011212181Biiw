//
//  ViewController.swift
//  TipCalculator
//
//  Created by Student on 9/12/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit
class ViewController: UIViewController,UITableViewDelegate{
    
    @IBOutlet var totalTextField :UITextField!
    @IBOutlet var taxPctSlider :UISlider!
    @IBOutlet var taxPctLabel :UILabel!
    @IBOutlet var tableView: UITableView!
    
    let tipCalc = TipCalculatorModel(total:33.25,taxPct:0.06)
    var possibleTips = Dictionary<Int,(tipAmt:Double,total:Double)>()
    var sortedKeys:[Int] = []
    
    
    @IBAction func calculateTapped(sender: AnyObject) {
        tipCalc.total = Double((totalTextField.text as NSString).doubleValue)
        
        possibleTips = tipCalc.returnPossibleTips()
        sortedKeys = sorted(Array(possibleTips.keys))
        tableView.reloadData()
    }

    @IBAction func taxPercentageChanged(sender :AnyObject){
        tipCalc.taxPct = Double(taxPctSlider.value) / 100.0
    refreshUI()
    }
    @IBAction func viewTapped(sender :AnyObject){ totalTextField.resignFirstResponder()}
    
    func refreshUI(){
        //1
        totalTextField.text = String(format: "%0.2f" ,tipCalc.total)
        //2
        taxPctSlider.value = Float(tipCalc.taxPct) * 100.0
        //3
        taxPctLabel.text = "Tax Percentage (\(Int(taxPctSlider.value))%)"
        //4
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        refreshUI()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView:UITableView!,numberOfRowsInSection section:Int) ->Int{
        return sortedKeys.count
    }
    //UTableViewDataSource methods
    func numberOfSectionsInTableView(tableView:UITableView!)->Int{
        return 1
    }
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
    
    }
    func tableView(tableView: UITableView!, cellForRowIndexPath indexPath: NSIndexPath!)->UITableViewCell! {
        var cell = UITableViewCell(style: UITableViewCellStyle.Value2, reuseIdentifier:nil)
        let tipPct = sortedKeys[indexPath.row]
        let tipAmt = possibleTips[tipPct]!.tipAmt
        let total = possibleTips[tipPct]!.total
        
        cell.textLabel!.text = "\(tipPct)%"
        cell.detailTextLabel!.text = String(format:"Tip:$%0.2f, total:$%0.2f", tipAmt,total)
        return cell
        
    }

}

