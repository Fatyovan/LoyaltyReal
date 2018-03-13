//
//  DashboardViewController.swift
//  Loyalty
//
//  Created by KorvMac01 on 08.3.18.
//  Copyright © 2018 Ivan Jovanovik. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController {
//    public var intPassed = Int()
    @IBOutlet weak var barCodeLabel: UILabel!
    @IBOutlet weak var barCodeImage: UIImageView!
    @IBOutlet weak var pointsLabel: UILabel!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        barCodeImage.image = generateBarcode(from:  barCodeLabel.text!)
//        let defaults = UserDefaults.standard
//        if let stringOne = defaults.string(forKey: newPoints.addedPoints) {
//            pointsLabel.text = stringOne
//        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        let defaults = UserDefaults.standard
        if let stringOne = defaults.string(forKey: newPoints.addedPoints) {
            pointsLabel.text = stringOne
        }
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
