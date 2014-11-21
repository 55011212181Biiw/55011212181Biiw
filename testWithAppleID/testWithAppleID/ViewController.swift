//
//  ViewController.swift
//  testWithAppleID
//
//  Created by Student on 11/21/2557 BE.
//  Copyright (c) 2557 Student. All rights reserved.
//

import UIKit
import CoreMotion
import AVFoundation
class ViewController: UIViewController {
    
    var test = "[MV] SISTAR(씨스타) _ I Swear"
    var audioPlayer1 = AVAudioPlayer()
    var audioPlayer2 = AVAudioPlayer()
    var audioPlayer3 = AVAudioPlayer()
    
    
    @IBAction func t1(sender: AnyObject) {
        audioPlayer1.play()
    }
    @IBAction func t2(sender: AnyObject) {
        test = "Chris Brown - With You"
        audioPlayer1.prepareToPlay()
        var url1 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(test, ofType: "mp3")!)
        coreAudio()
        audioPlayer1.play()
    }
    @IBAction func t3(sender: AnyObject) {
        audioPlayer1.stop()
    }
    
    func coreAudio() {
        var url1 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(test, ofType: "mp3")!)
        var error:NSError?
        audioPlayer1 = AVAudioPlayer(contentsOfURL: url1, error: &error)
            }
    
    override func viewDidLoad() {
        super.viewDidLoad()        
        coreAudio()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

