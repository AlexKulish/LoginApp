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
    
    var hobbyOne = ""
    var hobbyTwo = ""
    var hobbyThree = ""
    var prevJob = ""
    var newInterest = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hobbyOneLabel.text = hobbyOne
        hobbyTwoLabel.text = hobbyTwo
        hobbyThreeLabel.text = hobbyThree
        prevJobLabel.text = prevJob
        newInterestLabel.text = newInterest
    }
    
}
