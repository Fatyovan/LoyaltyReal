//
//  LoginViewController.swift
//  Loyalty
//
//  Created by KorvMac01 on 05.3.18.
//  Copyright © 2018 Ivan Jovanovik. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBAction func loginButton(_ sender: Any) {
        let next = self.storyboard?.instantiateViewController(withIdentifier: "EnterPinViewController") as! EnterPinViewController
        
        self.navigationController?.pushViewController(next, animated: true)
    }
    @IBAction func forgotPasswordButton(_ sender: Any) {
        let next = self.storyboard?.instantiateViewController(withIdentifier: "ForgotPasswordViewController") as! ForgotPasswordViewController
        
        self.navigationController?.pushViewController(next, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()

        self.userName.delegate = self;
        self.password.delegate = self;
        userName.tag = 0
        password.tag = 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(LoginViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let nextField = textField.superview?.viewWithTag(textField.tag + 1) as? UITextField {
            nextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
        return false
    }


}
