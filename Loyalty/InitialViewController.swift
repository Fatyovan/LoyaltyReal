//
//  InitialViewController.swift
//  Loyalty
//
//  Created by KorvMac01 on 01.3.18.
//  Copyright © 2018 Ivan Jovanovik. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    @IBAction func loginButton(_ sender: Any) {
        let next = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        
        self.navigationController?.pushViewController(next, animated: true)
    }
    @IBAction func registerButton(_ sender: Any) {
        let next = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
