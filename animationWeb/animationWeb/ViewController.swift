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
    let duration = 1.0
    let delay = 0.0
    let options = UIViewAnimationOptions.CurveEaseInOut
    let damping = 0.5
    let velocity = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coloredSquare.backgroundColor = UIColor.blueColor()
        coloredSquare.frame = CGRect(x: 0, y: 120, width: 50, height: 50)
        self.view.addSubview(coloredSquare)
        
        let options = UIViewAnimationOptions.Autoreverse|UIViewAnimationOptions.Repeat|UIViewAnimationOptions.CurveEaseInOut
        //let options = UIViewAnimationOptions.Repeat//เลื่อนไปขวา
        //let options = UIViewAnimationOptions.Autoreverse//เลื่อนไปกลับ1รอบ
        //let options = UIViewAnimationOptions.Autoreverse|UIViewAnimationOptions.Repeat|UIViewAnimationOptions.CurveEaseInOut//เลื่อนไปกลับเรื่อยๆ
        UIView.animateWithDuration(1.0, delay:0.0,options:options,animations: {
            self.coloredSquare.backgroundColor = UIColor.redColor()
            self.coloredSquare.frame = CGRect(x: 320-50, y: 120, width: 50, height: 50)
        },completion:nil)
        
       
        UIView.animateWithDuration(duration,delay:0.0,usingSpringWithDamping: 0.5, initialSpringVelocity: 1.0, options:UIViewAnimationOptions.CurveEaseInOut,animations:{
            
            },completion:{finish in
                
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

