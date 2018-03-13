//
//  InsertCodeViewController.swift
//  Loyalty
//
//  Created by KorvMac01 on 12.3.18.
//  Copyright © 2018 Ivan Jovanovik. All rights reserved.
//

import UIKit
//struct points {
//    static let addedPoints = "addedPoints"
//}
class InsertCodeViewController: UIViewController, UITextFieldDelegate {
    var myInt = Int()
    @IBOutlet weak var codeTextField: UITextField!
    @IBAction func InsertButton(_ sender: Any) {
        let controller = DashboardViewController()
        controller.intPassed = Int(codeTextField.text!)!
        self.performSegue(withIdentifier: "insertCode", sender: nil)
        
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "insertCode" {
            if segue.destination is DashboardViewController {
                let controller: DashboardViewController = segue.destination as! DashboardViewController
                controller.intPassed = Int(codeTextField.text!)!
                //                UserDefaults.standard.set(controller.intPassed, forKey: points.addedPoints)
            }
            return
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
//        self.prepare(for: DashboardViewController, sender: <#Any?#>)
        
    }
    
//    func pointsGainedFromProduct( textField : UITextField,replacementString string: String) -> Bool {
//        switch codeTextField {
//        case codeTextField.text >= 10000 && codeTextField.text < 20000:
//            <#code#>
//        default:
//            <#code#>
//        }
//    }
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(LoginViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
}
