//
//  ForgotPasswordViewController.swift
//  Loyalty
//
//  Created by KorvMac01 on 05.3.18.
//  Copyright © 2018 Ivan Jovanovik. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    @IBAction func confirmCodeButton(_ sender: Any) {
        let next = self.storyboard?.instantiateViewController(withIdentifier: "ChangePassViewController") as! ChangePassViewController
        
        self.navigationController?.pushViewController(next, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }


}
