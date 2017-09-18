//
//  CreateGroupsVC.swift
//  breakpoint
//
//  Created by Andre Boevink on 18/09/2017.
//  Copyright © 2017 Andre Boevink. All rights reserved.
//

import UIKit

class CreateGroupsVC: UIViewController
{

    @IBOutlet weak var titleTextField: InsetTextField!
    @IBOutlet weak var descriptionTextField: InsetTextField!
    @IBOutlet weak var emailSearchTextField: InsetTextField!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var doneBtn: UIButton!
    @IBOutlet weak var groupMemberLbl: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    @IBAction func doneBtnWasPressed(_ sender: UIButton)
    {
    }
    
    @IBAction func closeBtnWasPressed(_ sender: UIButton)
    {
        dismiss(animated: true, completion: nil)
    }
}
