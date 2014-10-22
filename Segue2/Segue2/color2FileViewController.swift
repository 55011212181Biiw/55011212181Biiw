//
//  color2FileViewController.swift
//  Segue2
//
//  Created by Student on 10/17/2557 BE.
//  Copyright (c) 2557 Student. All rights reserved.
//

import UIKit
protocol color2FileViewControllerDelegate{
    func myVCDidFinish(controller:color2FileViewController,text:String)
}

class color2FileViewController: UIViewController {
    
    var delegate:color2FileViewControllerDelegate? = nil
    var colorString = ""
    
    
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var titleLable: UILabel!
    @IBAction func saveColor(sender: UIBarButtonItem) {
        if(delegate != nil){
            delegate!.myVCDidFinish(self,text:colorLabel!.text!)
        }
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colorLabel.text = colorString
    }

    @IBAction func colorSelectionBT(sender: UIButton) {
        colorLabel.text = sender.titleLabel!.text!
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
