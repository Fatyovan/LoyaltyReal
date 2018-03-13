//
//  EnterPinViewController.swift
//  Loyalty
//
//  Created by KorvMac01 on 06.3.18.
//  Copyright © 2018 Ivan Jovanovik. All rights reserved.
//

import UIKit

class EnterPinViewController: UIViewController, UITextFieldDelegate {
    var generateCode:String = ""
    var imputCode:String = ""
    @IBAction func generateCodeButton(_ sender: Any) {
    let numberGenerator = String(arc4random_uniform(899999) + 100000)
        newCode.text = "\(numberGenerator)"

    }
    @IBOutlet weak var newCode: UILabel!
   
    @IBOutlet weak var pinTextField: UITextField!
    
   
    
    @IBAction func loginButton(_ sender: Any) {
        
        if String(describing: pinTextField.text) == String(describing: newCode.text) {
            let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
            appDelegate.tabbarrootcontrolelr()
        } else {
            let alert = UIAlertController(title: "Error", message: "Vnesovte pogresen pin obidete se povtorno !", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    let numberGenerator = String(arc4random_uniform(999999) + 100000)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()

    }

    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(LoginViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

}
