//
//  CellView.swift
//  UITableView Dynamic Cell Height
//
//  Created by Miguel Tejedor on 10/3/18.
//  Copyright © 2018 Miguel Tejedor. All rights reserved.
//

import UIKit

class CellView: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    
    static let identifier = "cellIdentifier"
    var title: String!
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    func setCell() {
        titleLabel.text = title
        switch title {
        case Title.short.rawValue:
            backgroundColor = #colorLiteral(red: 0.9215686275, green: 0.7882352941, blue: 0.2666666667, alpha: 1)
        case Title.medium.rawValue:
            backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.4274509804, blue: 0.1294117647, alpha: 1)
        case Title.long.rawValue:
            backgroundColor = #colorLiteral(red: 0.7529411765, green: 0.1843137255, blue: 0.1137254902, alpha: 1)
        default:
            backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
