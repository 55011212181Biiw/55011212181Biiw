//
//  ViewController.swift
//  CoreImageView
//
//  Created by Student on 10/3/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func btton1(sender: AnyObject) {
        let pickerC = UIImagePickerController()
        pickerC.delegate = self
        self.presentViewController(pickerC, animated: true, completion: nil)
    }
    @IBAction func button2(sender: AnyObject) {
        //1
        let imageToSave = filter.outputImage
        //2
        let softwareContext = CIContext(options: [kCIContextUseSoftwareRenderer])
        //3
        let cgimg = softwareContext.createCgImage(imageToSave,fromRect:imageToSave.extent())
        //4 
        let library = ALAssetsLibrary()
        library.writeImageToSavedPhotoAlbum(cgimg,metadata:imageToSave.proerties(),completion:nil)
    }
    @IBAction func slider1(sender: AnyObject) {
        let SliderValue = sender.value
        let outputImage = self.oldPhoto(biginImage,withAmount:SliderValue)
        let cgimg = context.createCGImage(outputImage,fromRect:outputImage.extent())
        let newImage = UIImage(CGImage: cgimg,scalb(orientation:orientation)
        self.imageView.image = newImage
    }
    
    @IBOutlet var UIImageCiew: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //1
        let fileURL = NSBundle.mainBundle().URLForResource("image", withExtension:"png")
        //2
        biginImage = CIImage(contentsOfURL:fileURL)
        //3
        filter = CIFilter(name:"CISepiaTone")
        filter.setValue(biginImage,forKey:kCIInputImageKey)
        filter.setValue(0.5,forKey:kCIInputIntensityKey)
        //1
        context = CIContext(options: nil)
        let cgimg = context.createCGImage(outputImage,fromRect:outputImage.extent())
        
        //2
        let newImage = UIImage(CGImage: cgimg)
        self.imageView.image = newImage
        self.logAllFilters()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

