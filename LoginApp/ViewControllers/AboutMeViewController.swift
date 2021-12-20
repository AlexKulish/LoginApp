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
    
    var user: User!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let moreInfoVC = segue.destination as! MoreInfoViewController
        
        moreInfoVC.user = user
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "Hello, my name is \(user.person.name) 👋🏼"
        ageLabel.text = "I'm \(user.person.age) years old 👱🏼‍♂️"
        universityLabel.text = "I graduated \(user.person.university) 👨🏼‍💻"
        educationLabel.text = "My qualification is \(user.person.education) 👨🏼‍🎓"
    }
    
    override func viewDidLayoutSubviews() {
        personImage.layer.cornerRadius = personImage.bounds.height / 2
    }
}
