//
//  AboutMeViewController.swift
//  LoginApp
//
//  Created by Alex Kulish on 18.12.2021.
//

import UIKit

class AboutMeViewController: UIViewController {
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var universityLabel: UILabel!
    @IBOutlet var educationLabel: UILabel!
    @IBOutlet var personImage: UIImageView!
    
    private let alex = User.getPerson()
    
    var name = ""
    var age = 0
    var university = ""
    var education = ""
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let moreInfoVC = segue.destination as! MoreInfoViewController
        
        moreInfoVC.hobbyOne = alex.hobbyOne
        moreInfoVC.hobbyTwo = alex.hobbyTwo
        moreInfoVC.hobbyThree = alex.hobbyThree
        moreInfoVC.prevJob = alex.prevJob
        moreInfoVC.newInterest = alex.newInterest
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "Hello, my name is \(name) 👋🏼"
        ageLabel.text = "I'm \(age) years old 👱🏼‍♂️"
        universityLabel.text = "I graduated \(university) 👨🏼‍💻"
        educationLabel.text = "My qualification is \(education) 👨🏼‍🎓"
    }
    
    override func viewDidLayoutSubviews() {
        personImage.layer.cornerRadius = personImage.bounds.height / 2
    }
}
