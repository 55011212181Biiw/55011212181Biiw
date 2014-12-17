//
//  DetailVC.swift
//  TableViewTest
//
//  Created by David Owens on 6/24/14.
//  Copyright (c) 2014 rhinoIO. All rights reserved.
//

import UIKit

class Detail: UIViewController {

    @IBOutlet var cellNameLabel: UILabel!
    @IBOutlet var cellDetailLabel: UILabel!

    var cellName:String = ""
    var cellDesc:String = ""
    
    required init(coder aDecoder: NSCoder) {
        
        super.init(coder:aDecoder)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
  
        cellNameLabel.text = cellName
        cellDetailLabel.text = cellDesc

        self.title = cellName

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
  
    }

}
