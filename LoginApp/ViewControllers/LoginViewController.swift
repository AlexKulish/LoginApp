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
    
    private let alex = User.getPerson()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        guard let viewControllers = tabBarController.viewControllers else
        { return }
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = alex.name
            } else if let navigationVC = viewController as? UINavigationController {
                let aboutUserVC = navigationVC.topViewController as! AboutMeViewController
                
                aboutUserVC.title = alex.name
                aboutUserVC.name = alex.name
                aboutUserVC.age = alex.age
                aboutUserVC.university = alex.university
                aboutUserVC.education = alex.education
            } 
        }
    }
    
    @IBAction func forgotUserNameButton() {
        showAlert(title: "No problem!",
                  message: "Your login is \"\(alex.login)\" 😉",
                  textField: passwordTextField)
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(title: "Ooops!",
                  message: "Your password is \"\(alex.password)\" 😎",
                  textField: passwordTextField)
    }
    
    @IBAction func logInAction() {
        if userNameTextField.text != alex.login || passwordTextField.text != alex.password {
            showAlert(title: "Wrong User Name or Password!",
                      message: "Please, enter correct data 🥺",
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


