//
//  OrderViewController.swift
//  Loyalty
//
//  Created by KorvMac01 on 13.3.18.
//  Copyright © 2018 Ivan Jovanovik. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController {
    @IBOutlet weak var productImage: UIImageView!
    @IBAction func order(_ sender: Any) {
       perfromAlert()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        }
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(LoginViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    func perfromAlert(){
        let alert  = UIAlertController (title: "Succes", message: "You successfuly order this pro", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: false, completion: nil)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

}
