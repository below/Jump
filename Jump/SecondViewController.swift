//
//  SecondViewController.swift
//  Jump
//
//  Created by Alexander v. Below on 04.11.14.
//  Copyright (c) 2014 Alexander von Below. All rights reserved.
//

import UIKit

class SecondViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.registerClass(MainCell.self, forCellReuseIdentifier: "mainCell")
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCellWithIdentifier("mainCell") as? UITableViewCell {
        let label = cell.contentView.viewWithTag(1) as? UILabel
        label?.text = "\(indexPath.row)"
        return cell
        }
        else {
            println("Noes!")
            return UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "")
        }
    }
}

