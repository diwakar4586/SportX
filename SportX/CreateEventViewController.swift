//
//  CreateEventViewController.swift
//  SportX
//
//  Created by Tathya Sachdeva on 12/05/24.
//

import UIKit

class CreateEventViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var sidebarTableView: UITableView!
    @IBOutlet weak var actionItemsTableView: UITableView!

    let sidebarData = [
        "Nearby Venues": ["ATS Golf Course", "JK Cricket Academy", "Jal Vayu", "Dera Bassi"],
        "Nearby Events": ["Football Event", "Basketball Event", "Baseball Event"]
    ]

    let actionItemsData = ["Action Item 1", "Action Item 2", "Action Item 3"]

    override func viewDidLoad() {
        super.viewDidLoad()

        sidebarTableView.dataSource = self
        sidebarTableView.delegate = self
        sidebarTableView.register(UINib(nibName: "CustomSidebarTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomSidebarCell")

        actionItemsTableView.dataSource = self
        actionItemsTableView.delegate = self
        actionItemsTableView.register(UINib(nibName: "CustomActionItemTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomActionItemCell")
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        if tableView == sidebarTableView {
            return sidebarData.keys.count
        } else {
            return 1
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == sidebarTableView {
            let key = Array(sidebarData.keys)[section]
            return sidebarData[key]?.count ?? 0
        } else {
            return actionItemsData.count
        }
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if tableView == sidebarTableView {
            return Array(sidebarData.keys)[section]
        } else {
            return nil
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == sidebarTableView {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomSidebarCell", for: indexPath) as! CustomSidebarTableViewCell
            let sidebarDataItem = sidebarData.values.flatMap { $0 }[indexPath.row]
            cell.setCell(name: sidebarDataItem.name, location: sidebarDataItem.location)
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomActionItemCell", for: indexPath) as! CustomActionItemTableViewCell
            cell.actionItemLabel.text = actionItemsData[indexPath.row]
            return cell
        }
    }
}
