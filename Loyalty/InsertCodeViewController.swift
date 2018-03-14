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
    func perfromAlert(){
        let alert  = UIAlertController (title: "Succes", message: "You successfuly added new product, your points will be added on dashboard score", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: false, completion: nil)
    }
    @IBOutlet weak var codeTextField: UITextField!
    @IBAction func InsertButton(_ sender: Any) {
//        var points = Int()
//       pointsAdded = Int(codeTextField.text!)!
        let defaults = UserDefaults.standard
            if (Int(codeTextField.text!)! >= 10000 && Int(codeTextField.text!)! < 19999) {
                defaults.set(defaults.integer(forKey: newPoints.addedPoints)+10, forKey: newPoints.addedPoints)
                perfromAlert()

            } else if (Int(codeTextField.text!)! >= 20000 && Int(codeTextField.text!)! < 29999) {
                defaults.set(defaults.integer(forKey: newPoints.addedPoints)+20, forKey: newPoints.addedPoints)
                perfromAlert()

            }else if (Int(codeTextField.text!)! >= 30000 && Int(codeTextField.text!)! < 40000) {
                defaults.set(defaults.integer(forKey: newPoints.addedPoints)+30, forKey: newPoints.addedPoints)
                perfromAlert()
            }else if (Int(codeTextField.text!)! >= 40000 && Int(codeTextField.text!)! < 50000) {
                defaults.set(defaults.integer(forKey: newPoints.addedPoints)+40, forKey: newPoints.addedPoints)
                perfromAlert()
            }else if (Int(codeTextField.text!)! >= 50000 && Int(codeTextField.text!)! < 60000) {
                defaults.set(defaults.integer(forKey: newPoints.addedPoints)+50, forKey: newPoints.addedPoints)
                perfromAlert()
            }else if (Int(codeTextField.text!)! >= 60000 && Int(codeTextField.text!)! < 70000) {
                defaults.set(defaults.integer(forKey: newPoints.addedPoints)+60, forKey: newPoints.addedPoints)
                perfromAlert()
            }else if (Int(codeTextField.text!)! >= 70000 && Int(codeTextField.text!)! < 80000) {
                defaults.set(defaults.integer(forKey: newPoints.addedPoints)+70, forKey: newPoints.addedPoints)
                perfromAlert()
            }else if (Int(codeTextField.text!)! >= 80000 && Int(codeTextField.text!)! < 90000) {
                defaults.set(defaults.integer(forKey: newPoints.addedPoints)+80, forKey: newPoints.addedPoints)
                perfromAlert()
            }else if (Int(codeTextField.text!)! >= 90000 && Int(codeTextField.text!)! < 100000) {
                defaults.set(defaults.integer(forKey: newPoints.addedPoints)+90, forKey: newPoints.addedPoints)
                perfromAlert()
            }else if (Int(codeTextField.text!)! >= 100000 && Int(codeTextField.text!)! < 110000) {
                defaults.set(defaults.integer(forKey: newPoints.addedPoints)+100, forKey: newPoints.addedPoints)
                 perfromAlert()
            }else {
                let alert = UIAlertController(title: "Error", message: "Your code is invalid !", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
        }
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
//        switch Int(codeTextField.text!)! {
//        case Int(codeTextField.text!)! >= 10000 && Int(codeTextField.text!)! < 20000:
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
