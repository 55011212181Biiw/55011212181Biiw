//
//  Detail.swift
//  Exam1_55011212181
//
//  Created by Student on 12/17/2557 BE.
//  Copyright (c) 2557 Student. All rights reserved.
//

import Foundation
class DetailVC: UIViewController {
    
    //Our label for displaying var "items/cellName"
    @IBOutlet var cellNameLabel: UILabel!
    @IBOutlet var cellDetailLabel: UILabel!
    
    //Receiving variable assigned to MainVC's var "items"
    var cellName:String = ""
    var cellDesc:String = ""
    
    required init(coder aDecoder: NSCoder) {
        
        super.init(coder:aDecoder)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Assign your UILabel text to your String
        cellNameLabel.text = cellName
        cellDetailLabel.text = cellDesc
        
        //Assign String var to NavBar title
        self.title = cellName
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}