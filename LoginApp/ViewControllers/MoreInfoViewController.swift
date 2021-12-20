//
//  MoreInfoViewController.swift
//  LoginApp
//
//  Created by Alex Kulish on 18.12.2021.
//

import UIKit

class MoreInfoViewController: UIViewController {
    @IBOutlet var hobbyOneLabel: UILabel!
    @IBOutlet var hobbyTwoLabel: UILabel!
    @IBOutlet var hobbyThreeLabel: UILabel!
    @IBOutlet var prevJobLabel: UILabel!
    @IBOutlet var newInterestLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hobbyOneLabel.text = user.person.hobbyOne
        hobbyTwoLabel.text = user.person.hobbyTwo
        hobbyThreeLabel.text = user.person.hobbyThree
        prevJobLabel.text = user.person.prevJob
        newInterestLabel.text = user.person.newInterest
    }
    
}
