//
//  CreatePostVC.swift
//  breakpoint
//
//  Created by Andre Boevink on 14/09/2017.
//  Copyright © 2017 Andre Boevink. All rights reserved.
//

import UIKit
import Firebase

class CreatePostVC: UIViewController
{
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var sendBtn: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        textView.delegate = self
        sendBtn.isEnabled = false
        sendBtn.bindToKeyBoard()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        emailLbl.text = Auth.auth().currentUser?.email
    }
    
    @IBAction func sendBtnWasPressed(_ sender: UIButton)
    {
        if textView.text != nil && textView.text != "Say something here..."
        {
            DataService.instance.uploadPost(withMessage: textView.text, forUID: (Auth.auth().currentUser?.uid)!, withGroupKey: nil, sendComplete: { (isComplete) in
                if isComplete
                {
                     self.dismiss(animated: true, completion: nil)
                }
                else
                {
                    print("There was an error!")
                }
            })
        }
    }
    
    @IBAction func closeBtnWasPressed(_ sender: UIButton)
    {
        dismiss(animated: true, completion: nil)
    }
}

extension CreatePostVC: UITextViewDelegate
{
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = ""
    }
    
    func textViewDidChange(_ textView: UITextView) {
        if textView.text != ""
        {
            sendBtn.isEnabled = true
        }
        else
        {
            sendBtn.isEnabled = false
        }
    }
}
