//
//  StocksViewController.swift
//  Exam1_55011212181
//
//  Created by Student on 12/17/2557 BE.
//  Copyright (c) 2557 Student. All rights reserved.
//

import UIKit

class StocksViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var amount: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var amountTF: UITextField!
    @IBOutlet weak var priceTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
