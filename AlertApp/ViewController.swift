//
//  ViewController.swift
//  AlertApp
//
//  Created by Jamie on 2020/09/10.
//  Copyright © 2020 Jamie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var passwordText2: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpClicked(_ sender: Any) {
        
        
        if usernameText.text == "" {
            
         alertPopup(title: "ERROR", message: "Username not found")
            
        } else if passwordText.text == "" {
            
           alertPopup(title: "ERROR", message: "Password not found")
            
        } else if passwordText2.text != passwordText.text {
            
          alertPopup(title: "ERROR", message: "Password do not match")
            
        } else {
            
             alertPopup(title: "SUCCESS", message: "User OK")
           
        }
    }
    
    func alertPopup(title: String, message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.destructive, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
        
    }
    
}

