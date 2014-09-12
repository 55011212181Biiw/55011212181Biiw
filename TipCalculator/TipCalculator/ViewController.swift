//
//  ViewController.swift
//  TipCalculator
//
//  Created by Student on 9/12/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var totalTextField :UITextField!
    @IBOutlet var taxPctSlider :UISlider!
    @IBOutlet var taxPctLabel :UILabel!
    @IBOutlet var resulTextView :UITextView!
    
    @IBAction func calculatorTapped(sender :AnyObject){}
    @IBAction func taxPercentageChanged(sender :AnyObject){}
    @IBAction func viewTapped(sender :AnyObject){}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

