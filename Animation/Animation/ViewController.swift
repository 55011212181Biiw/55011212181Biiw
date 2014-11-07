//
//  ViewController.swift
//  Animation
//
//  Created by Student on 11/7/2557 BE.
//  Copyright (c) 2557 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollisionBehaviorDelegate{

    var square:UIView!
    
    var  animator:UIDynamicAnimator!
    var gravity:UIGravityBehavior!
    
    var collision:UICollisionBehavior!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        square = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        square.backgroundColor = UIColor.grayColor()
        view.addSubview(square)
        
        animator = UIDynamicAnimator(referenceView: view)
        gravity = UIGravityBehavior(items: [square])
        animator.addBehavior(gravity)
        
        let barrier = UIView(frame: CGRect(x: 0, y: 300, width: 130, height: 20))
    
        collision = UICollisionBehavior(items: [square])
        collision.translatesReferenceBoundsIntoBoundary = true
        animator.addBehavior(collision)
        
       
        barrier.backgroundColor = UIColor.redColor()
        view.addSubview(barrier)
        
        
        
        collision.addBoundaryWithIdentifier("barrier", forPath: UIBezierPath(rect: barrier.frame))
        
        collision.action = {
       println("\(NSStringFromCGAffineTransform(self.square.transform)) \(NSStringFromCGPoint(self.square.center))")
            
      }
        
        collision.collisionDelegate = self
        
        let itemBehaviour = UIDynamicItemBehavior(items: [square])
        itemBehaviour.elasticity = 0.6
        animator.addBehavior(itemBehaviour)
        
        func collisionBehavior(behavior:UICollisionBehavior!,beganContactForItem item:UIDynamicItem!,withBoundaryIdentifier identifier:NSCopying!,atPoint p: CGPoint){
            
            println("Boundary contact occurred - \(identifier)")

            let collidingView = item as UIView
            collidingView.backgroundColor = UIColor.yellowColor()
            UIView.animateWithDuration(1){
            collidingView.backgroundColor = UIColor.grayColor()
            }
           
            var firstContact = false
            if(!firstContact){
                firstContact = true
                
                let square = UIView(frame: CGRect(x: 30, y: 0, width: 100, height: 100))
                square.backgroundColor = UIColor.grayColor()
                view.addSubview(square)
                
                collision.addItem(square)
                gravity.addItem(square)
                
                let attach = UIAttachmentBehavior(item: collidingView, attachedToItem: square)
                animator.addBehavior(attach)
                
                
            }
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

