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
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageName: UILabel!
    var isPiano = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRocognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRocognizer)
    }
    
    @objc func changePic() {
                
        if isPiano {
            imageView.image = UIImage(named: "synth")
            imageName.text = "synth"
            isPiano = false
        } else {
            
            imageView.image = UIImage(named: "piano")
            imageName.text = "piano"
            isPiano = true
        }
        
       
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

