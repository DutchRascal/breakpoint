//
//  LoginVC.swift
//  breakpoint
//
//  Created by Andre Boevink on 13/09/2017.
//  Copyright © 2017 Andre Boevink. All rights reserved.
//

import UIKit

class LoginVC: UIViewController
{
    @IBOutlet weak var emailField: InsetTextField!
    @IBOutlet weak var passwordField: InsetTextField!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        emailField.delegate = self
        passwordField.delegate = self
    }
    
    @IBAction func siginInWasPressed(_ sender: UIButton)
    {
        if emailField.text != nil && passwordField.text != nil
        {
            AuthService.instance.loginUser(withEmail: emailField.text!, andPassword: passwordField.text!, loginComplete: { (success, loginError) in
                if success
                {
                    self.dismiss(animated: true, completion: nil)
                }
                else
                {
                    debugPrint(String(describing: loginError?.localizedDescription))
                }
                AuthService.instance.registerUser(withEmail: self.emailField.text!, andPassword: self.passwordField.text!, userCreationComplete: { (success, registrationError) in
                    if success
                    {
                        AuthService.instance.loginUser(withEmail: self.emailField.text!, andPassword: self.passwordField.text!, loginComplete: { (success, nil) in
                            self.dismiss(animated: true, completion: nil)
                            print("Successfully registred user")
                        })
                    }
                    else
                    {
                        debugPrint(String(describing: registrationError?.localizedDescription))
                    }
                })
            })
        }
    }
    
    @IBAction func closeBtnWasPressed(_ sender: UIButton)
    {
        dismiss(animated: true, completion: nil)
    }
}

extension LoginVC: UITextFieldDelegate
{
    
}
