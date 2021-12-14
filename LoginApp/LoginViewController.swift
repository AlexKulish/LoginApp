//
//  ViewController.swift
//  LoginApp
//
//  Created by Alex Kulish on 14.12.2021.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    @IBAction func forgotUserNameButton() {
        showAlert(title: "Ooops!", message: "Your name is Alexey")
        
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(title: "Ooops!", message: "Your password is password")
        
    }
    
    
}

extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let actionOk = UIAlertAction(title: "OK", style: .default) { _ in
            // удаляются сразу 2 текста, подумать как сделать чтобы удалялся только один
            self.userNameTextField.text = ""
            self.passwordTextField.text = ""
        }
        present(alert, animated: true)
        alert.addAction(actionOk)
    }
}
