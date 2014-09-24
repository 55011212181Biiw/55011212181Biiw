//
//  ViewController.swift
//  countNumber
//
//  Created by Student on 9/24/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var one = 0
    var two = 0
    var three = 0

    @IBAction func threeButton(sender: AnyObject) {
        three = three + 1
        label2.text = "\(three)"
    }
    @IBAction func twoButton(sender: AnyObject) {
        two = two + 1
        label1.text = "\(two)"
    }
    @IBAction func oneButton(sender: AnyObject) {
        one = one + 1
        label0.text = "\(one)"
    }
    @IBOutlet weak var label0: UILabel!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    @IBAction func resetAll(sender: AnyObject) {
        one = 0
        two = 0
        three = 0
        label0.text = "\(one)"
        label1.text = "\(two)"
        label2.text = "\(three)"
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

