//
//  AuthVC.swift
//  breakpoint
//
//  Created by Andre Boevink on 13/09/2017.
//  Copyright © 2017 Andre Boevink. All rights reserved.
//

import UIKit

class AuthVC: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func signInWithEmailBtnWasPressed(_ sender: UIButton)
    {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVC!, animated: true, completion: nil)
    }
    
    @IBAction func facebookSignInWasPressed(_ sender: UIButton)
    {
    }
    
    @IBAction func googleSignInWasPressed(_ sender: UIButton)
    {
    }
}
