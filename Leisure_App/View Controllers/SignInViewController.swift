//
//  ViewController.swift
//  Leisure_App
//
//  Created by Vandan  on 3/18/20.
//  Copyright © 2020 Vandan Inc. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    
    @IBOutlet var userName : UITextField!
    @IBOutlet var password : UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signButton(sender: Any){
        print("Sign In tapped")
    }
    @IBAction func registerButton(sender: Any){
        print("Register Button tapped")
        
        let registerViewController = self.storyboard?.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
        self.present(registerViewController, animated: true)
    }
    

}

