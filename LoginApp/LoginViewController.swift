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
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as! WelcomeViewController
        welcomeVC.welcomeMessage = "Welcome \(userNameTextField.text ?? "")!"
        welcomeVC.emoji = "\u{1F44B}"
    }
    
    @IBAction func forgotUserNameButton() {
        showAlert(title: "No problem!",
                  message: "Your name is \"Geralt\" \u{1F609}")
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(title: "Ooops!",
                  message: "Your password is \"plotva\" \u{1F434}")
    }
    
    @IBAction func logInAction() {
        let userName = userNameTextField.text
        let password = passwordTextField.text
        
        if userName == "Geralt" && password == "plotva" {
            performSegue(withIdentifier: "goToWelcomeVC", sender: self)
        } else {
            showAlert(title: "Wrong User Name or Password!",
                      message: "Please, enter correct data \u{1F97A}")
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = nil
        passwordTextField.text = nil
    }
}

// MARK: - Setup alert

extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let actionOk = UIAlertAction(title: "OK", style: .default) { _ in
            self.userNameTextField.text = nil
            self.passwordTextField.text = nil
        }
        present(alert, animated: true)
        alert.addAction(actionOk)
    }
}




