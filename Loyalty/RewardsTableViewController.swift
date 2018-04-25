//
//  RewardsTableViewController.swift
//  Loyalty
//
//  Created by KorvMac01 on 11.3.18.
//  Copyright © 2018 Ivan Jovanovik. All rights reserved.
//

import UIKit
 struct cellData1 {
    let cell : Int!
    let mainlabel : String!
    let mainImage : UIImage
    let pointsImage : UIImage
    let pointsLabel : String!
    let descriptionLabel : String!
}
var myIndex = 0
class RewardsTableViewController: UITableViewController {
    var arrayOfCellData = [cellData1]()

    override func viewDidLoad() {
        super.viewDidLoad()
        arrayOfCellData = [cellData1(cell: 1, mainlabel: "Monitor", mainImage: #imageLiteral(resourceName: "monitor"), pointsImage: #imageLiteral(resourceName: "zvezda"), pointsLabel: "1000", descriptionLabel: "*Samsung monitor 22'"),
                           cellData1(cell: 1, mainlabel: "Laptop", mainImage: #imageLiteral(resourceName: "laptop"), pointsImage: #imageLiteral(resourceName: "zvezda"), pointsLabel: "2000", descriptionLabel: "*HP laptop, i5, 8gb, 250ssd"),
                           cellData1(cell: 1, mainlabel: "Mouse", mainImage: #imageLiteral(resourceName: "mouse"), pointsImage: #imageLiteral(resourceName: "zvezda"), pointsLabel: "500", descriptionLabel: "*Mouse logitech"),
                           cellData1(cell: 1, mainlabel: "Keyboard", mainImage: #imageLiteral(resourceName: "keyboard"), pointsImage: #imageLiteral(resourceName: "zvezda"), pointsLabel: "400", descriptionLabel: "*Keyboard logitech"),]
    }
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfCellData.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if arrayOfCellData[indexPath.row].cell == 1 {
            let totalPoints = UserDefaults.standard.integer(forKey: newPoints.addedPoints)
            let cell = Bundle.main.loadNibNamed("RewardssTableViewCell", owner: self, options: nil)?.first as! RewardssTableViewCell
            
            cell.mainImage.image = arrayOfCellData[indexPath.row].mainImage
            cell.mainLabel.text = arrayOfCellData[indexPath.row].mainlabel
            cell.pointsImage.image = arrayOfCellData[indexPath.row].pointsImage
            cell.pointsLabel.text = arrayOfCellData[indexPath.row].pointsLabel
            if totalPoints >= Int(cell.pointsLabel.text!)!{
                cell.pointsLabel.textColor = UIColor.green
            }
            cell.descriptionLabel.text = arrayOfCellData[indexPath.row].descriptionLabel
            
            return cell
        } else {
            let cell = Bundle.main.loadNibNamed("RewardssTableViewCell", owner: self, options: nil)?.first as! RewardssTableViewCell
            
            cell.mainImage.image = arrayOfCellData[indexPath.row].mainImage
            cell.mainLabel.text = arrayOfCellData[indexPath.row].mainlabel
            cell.pointsImage.image = arrayOfCellData[indexPath.row].pointsImage
            cell.pointsLabel.text = arrayOfCellData[indexPath.row].pointsLabel
//            cell.pointsLabel.textColor = UIColor.green
            cell.descriptionLabel.text = arrayOfCellData[indexPath.row].descriptionLabel
            
            return cell
        }
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 135
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       myIndex = indexPath.row
       performSegue(withIdentifier: "segue", sender: self)
    }
}
