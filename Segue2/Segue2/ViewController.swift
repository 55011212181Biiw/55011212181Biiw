//
//  ViewController.swift
//  Segue2
//
//  Created by Student on 10/17/2557 BE.
//  Copyright (c) 2557 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,color2FileViewControllerDelegate {

    @IBOutlet var colorLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func myVCDidFinish(controller:color2FileViewController,text:String){
        colorLabel.text = "Co:" + text
        controller.navigationController?.popViewControllerAnimated(true)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "mySegue"{
            let vc = segue.destinationViewController as color2FileViewController
            vc.colorString = colorLabel.text!
            vc.delegate = self
        }
    }


}

