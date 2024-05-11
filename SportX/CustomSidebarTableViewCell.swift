//
//  CustomSidebarTableViewCell.swift
//  SportX
//
//  Created by Tathya Sachdeva on 12/05/24.
//

import UIKit

class CustomSidebarTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    func setCell(name: String, location: String) {
        nameLabel.text = name
        locationLabel.text = location
    }
    
}
