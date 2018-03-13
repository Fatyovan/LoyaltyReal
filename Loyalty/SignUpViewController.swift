//
//  SignUpViewController.swift
//  Loyalty
//
//  Created by KorvMac01 on 08.3.18.
//  Copyright © 2018 Ivan Jovanovik. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var cardId: UITextField!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var birthDateField: UITextField!
    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var repeatPasswordField: UITextField!
    @IBOutlet weak var cityField: UITextField!
    
    @IBOutlet weak var addressField: UITextField!
    @IBOutlet weak var genderField: UITextField!
    @IBAction func registerButton(_ sender: Any) {
        let next = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(LoginViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
//    func validate(_ textField: UITextField) -> (Bool, String?) {
//        guard let text = textField.text else {
//            return (false, nil)
//        }
//        if textField == passwordField {
//            return (text.count >= 6, "Your password is too short.")
//        }
//        
//        return (text.count > 0, "This field cannot be empty.")
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }
}

extension SignUpViewController: UITextFieldDelegate {
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            switch textField {
            case cardId:
                nameField.becomeFirstResponder()
            case nameField:
                lastNameField.becomeFirstResponder()
            case lastNameField:
                birthDateField.becomeFirstResponder()
            case birthDateField:
                cityField.becomeFirstResponder()
            case cityField:
                genderField.becomeFirstResponder()
            case genderField:
                addressField.becomeFirstResponder()
            case addressField:
                userNameField.becomeFirstResponder()
            case userNameField:
                passwordField.becomeFirstResponder()
            case passwordField:
                repeatPasswordField.becomeFirstResponder()
            default:
                repeatPasswordField.resignFirstResponder()
            }
            return true
        }
        
    }

