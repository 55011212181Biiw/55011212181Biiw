//
//  ViewController.swift
//  animationWeb
//
//  Created by Student on 11/7/2557 BE.
//  Copyright (c) 2557 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let coloredSquare = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        coloredSquare.backgroundColor = UIColor.blueColor()
        coloredSquare.frame = CGRect(x: 0, y: 120, width: 50, height: 50)
        self.view.addSubview(coloredSquare)
        
        UIView.animateWithDuration(1.0, animations: {
            self.coloredSquare.backgroundColor = UIColor.redColor()
            self.coloredSquare.frame = CGRect(x: 320-50, y: 120, width: 50, height: 50)
        },completion:nil)
        
        let duration = 1.0
        let delay = 0.0
        let options = UIViewAnimationOptions.CurveEaseInOut
        UIView.animateWithDuration(duration,delay:delay, options:options,animations:{
            
            },completion:{finish in
                
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

