//
//  DashboardViewController.swift
//  Loyalty
//
//  Created by KorvMac01 on 08.3.18.
//  Copyright © 2018 Ivan Jovanovik. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController {
    var intPassed = Double()
    @IBOutlet weak var barCodeLabel: UILabel!
    @IBOutlet weak var barCodeImage: UIImageView!
    @IBOutlet weak var pointsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        barCodeImage.image = generateBarcode(from:  barCodeLabel.text!)
//        pointsLabel.text = String(intPassed)
//        pointsLabel
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func generateBarcode(from string: String) -> UIImage? {
        let data = string.data(using: String.Encoding.ascii)
        
        if let filter = CIFilter(name: "CICode128BarcodeGenerator") {
            filter.setValue(data, forKey: "inputMessage")
            let transform = CGAffineTransform(scaleX: 3, y: 3)
            
            if let output = filter.outputImage?.transformed(by: transform)
            {
                return UIImage(ciImage: output)
            }
        }
        
        return nil
    }

}
