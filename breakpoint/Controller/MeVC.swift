//
//  MeVC.swift
//  breakpoint
//
//  Created by Andre Boevink on 14/09/2017.
//  Copyright © 2017 Andre Boevink. All rights reserved.
//

import UIKit

class MeVC: UIViewController
{
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func signOutBtnWasPressed(_ sender: UIButton)
    {
    }
    
}
