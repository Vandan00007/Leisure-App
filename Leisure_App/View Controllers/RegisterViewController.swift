//
//  RegisterViewController.swift
//  Leisure_App
//
//  Created by Vandan  on 3/18/20.
//  Copyright © 2020 Vandan Inc. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet var firstName : UITextField!
    @IBOutlet var lastName : UITextField!
    @IBOutlet var emailAddress : UITextField!
    @IBOutlet var username : UITextField!
    @IBOutlet var password : UITextField!
    @IBOutlet var repeatPassword : UITextField!
 
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancel(sender: Any){
        print("Cancel")
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func register(sender: Any){
        print("Sign In")
        
        if (firstName.text?.isEmpty)! || (lastName.text?.isEmpty)! || (emailAddress.text?.isEmpty)! || (password.text?.isEmpty)! || (username.text?.isEmpty)!
        {
            displayAlert(userMessage: "All the fields are required")
            return
        }
        
        if ((password.text?.elementsEqual(repeatPassword.text!)) != true)
        {
            displayAlert(userMessage: "Passwords should match")
            return
        }
        
        let activityIndicator = UIActivityIndicatorView(style: .gray)
        activityIndicator.center = view.center
        activityIndicator.hidesWhenStopped = false
        activityIndicator.startAnimating()
        view.addSubview(activityIndicator)
    }
    
    func displayAlert(userMessage: String) -> Void{
        DispatchQueue.main.async {
            let alertController = UIAlertController(title: "Alert", message: userMessage, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Ok", style: .default)
            {(action:UIAlertAction!) in
                print("Ok tapped")
                DispatchQueue.main.async {
                    
                }
            }
            alertController.addAction(okAction)
            self.present(alertController, animated: true)
        }
    }
   

}
