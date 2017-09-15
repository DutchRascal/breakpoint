//
//  FeedCell.swift
//  breakpoint
//
//  Created by Andre Boevink on 15/09/2017.
//  Copyright © 2017 Andre Boevink. All rights reserved.
//

import UIKit

class FeedCell: UITableViewCell
{

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var contentLbl: UILabel!
    
    func configureCell(profileImage: UIImage, email: String, content: String)
    {
        self.profileImage.image = profileImage
        self.emailLbl.text = email
        self.contentLbl.text = content
    }
}
