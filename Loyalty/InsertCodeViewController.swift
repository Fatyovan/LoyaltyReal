//
//  InsertCodeViewController.swift
//  Loyalty
//
//  Created by KorvMac01 on 12.3.18.
//  Copyright © 2018 Ivan Jovanovik. All rights reserved.
//

import UIKit

class InsertCodeViewController: UIViewController, UITextFieldDelegate {
    var myInt = Int()
    @IBOutlet weak var codeTextField: UITextField!
//    @IBAction func InsertButton(_ sender: Any) {
////        let next = self.storyboard?.instantiateViewController(withIdentifier: "DashboardViewController") as! DashboardViewController
////        let myInt = Double(codeTextField.text!)
////        next.intPassed = myInt!
////        self.navigationController?.pushViewController(next, animated: true)
//        
//    }
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(LoginViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()

//        codeTextField.delegate = self
//        let myInt = Double(codeTextField.text!)
    }
    
//    func pointsGainedFromProduct( textField : UITextField,replacementString string: String) -> Bool {
//        switch codeTextField {
//        case codeTextField.text >= 10000 && codeTextField.text < 20000:
//            <#code#>
//        default:
//            <#code#>
//        }
//    }
    
}
