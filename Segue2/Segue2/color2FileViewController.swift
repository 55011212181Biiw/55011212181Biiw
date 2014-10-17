//
//  color2FileViewController.swift
//  Segue2
//
//  Created by Student on 10/17/2557 BE.
//  Copyright (c) 2557 Student. All rights reserved.
//

import UIKit

class color2FileViewController: UIViewController {
    
    var color = ""
    @IBOutlet weak var color2Label: UILabel!
    
    @IBAction func saveColor(sender: UIBarButtonItem) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func colorSelectionBT(sender: UIButton) {
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
