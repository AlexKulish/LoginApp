//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Alex Kulish on 14.12.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var emojiLabel: UILabel!
    
    var welcomeMessage: String!
    var emoji: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcomeMessage
        emojiLabel.text = emoji
    }
    
    @IBAction func logOutAction() {
        dismiss(animated: true)
    }
}
