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
    
    private let userName = "Geralt"
    private let password = "plotva"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as! WelcomeViewController
        welcomeVC.user = userName
    }
    
    @IBAction func forgotUserNameButton() {
        showAlert(title: "No problem!",
                  message: "Your name is \"\(userName)\" \u{1F609}",
                  textField: passwordTextField)
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(title: "Ooops!",
                  message: "Your password is \"\(password)\" \u{1F434}",
                  textField: passwordTextField)
    }
    
    @IBAction func logInAction() {
        if userNameTextField.text != userName || passwordTextField.text != password {
            showAlert(title: "Wrong User Name or Password!",
                      message: "Please, enter correct data \u{1F97A}",
                      textField: passwordTextField)
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}

// MARK: - Setup alert

extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

// MARK: - Setup delegate

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            logInAction()
            performSegue(withIdentifier: "goToWelcomeVC", sender: nil)
        }
        return true
    }
}


