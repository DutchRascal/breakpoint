//
//  ShadowView.swift
//  breakpoint
//
//  Created by Andre Boevink on 13/09/2017.
//  Copyright © 2017 Andre Boevink. All rights reserved.
//

import UIKit

class ShadowView: UIView
{
    override func awakeFromNib()
    {
        self.layer.shadowOpacity = 0.75
        self.layer.shadowRadius = 5
        self.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        super.awakeFromNib()
    }
}
