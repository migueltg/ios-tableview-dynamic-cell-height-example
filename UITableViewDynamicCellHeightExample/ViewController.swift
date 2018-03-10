//
//  ViewController.swift
//  UITableView Dynamic Cell Height
//
//  Created by Miguel Tejedor on 10/3/18.
//  Copyright © 2018 Miguel Tejedor. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet weak var tableVew: UITableView!
    
    static let nElements = 80
    fileprivate var tableData: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTable()
    }
    
    fileprivate func setTable() {
        tableData = Title.getArrayOfRamdomTitlesWith(nElements: ViewController.nElements)
        tableVew.rowHeight = UITableViewAutomaticDimension
        tableVew.estimatedRowHeight = 44
        tableVew.dataSource = self
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableVew.dequeueReusableCell(withIdentifier: CellView.identifier, for: indexPath) as! CellView
        let title = tableData[indexPath.row]
        cell.title = title
        cell.setCell()
        cell.layoutIfNeeded()
        return cell
    }
}
