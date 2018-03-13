//
//  InsertCodeViewController.swift
//  Loyalty
//
//  Created by KorvMac01 on 12.3.18.
//  Copyright © 2018 Ivan Jovanovik. All rights reserved.
//

import UIKit
struct newPoints {
    static let addedPoints = "addedPoints"
}
public var pointsAdded = Int()

class InsertCodeViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var codeTextField: UITextField!
    @IBAction func InsertButton(_ sender: Any) {
       pointsAdded = Int(codeTextField.text!)!
        let defaults = UserDefaults.standard
       defaults.set(defaults.integer(forKey: newPoints.addedPoints)+pointsAdded, forKey: newPoints.addedPoints)
//        self.performSegue(withIdentifier: "insertCode", sender: nil)
        
    }
   
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "insertCode" {
//            if segue.destination is DashboardViewController {
//                let controller: DashboardViewController = segue.destination as! DashboardViewController
//                pointsAdded = Int(codeTextField.text!)!
//                UserDefaults.standard.set(controller.pointsLabel, forKey: points.addedPoints)
//            }
//            return
//        }
//    }
    
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
