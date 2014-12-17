//
//  AddDT.swift
//  Exam1_55011212181
//
//  Created by Student on 12/17/2557 BE.
//  Copyright (c) 2557 Student. All rights reserved.
//

import Foundation
class AddDT: UIViewController {
    
    @IBOutlet var txtName: UITextField!
    @IBOutlet var txtDescription: UITextField!
    
    @IBAction func btnAddTask(sender: UIButton){
        
        var name: String = txtName.text
        var description: String = txtDescription.text
        taskMgr.addTask(name, desc: description)
        txtName.text = ""
        txtDescription.text = ""
        self.view.endEditing(true)
        
        navigationController?.presentingViewController?.dismissViewControllerAnimated(true, completion: {})
        
    }
    
    @IBAction func btnCancel(){
        
        navigationController?.presentingViewController?.dismissViewControllerAnimated(true, completion: {})
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        txtName.becomeFirstResponder()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(textField: UITextField!) ->Bool {
        
        textField.resignFirstResponder()
        return true
        
    }
    
}