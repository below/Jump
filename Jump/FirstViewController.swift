//
//  FirstViewController.swift
//  Jump
//
//  Created by Alexander v. Below on 04.11.14.
//  Copyright (c) 2014 Alexander von Below. All rights reserved.
//

import UIKit

class FirstViewController: UITableViewController {

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCellWithIdentifier("mainCell") as? MainCell {
            cell.myLabel?.text = "\(indexPath.row)"
            return cell
        }
        else {
            println("Noes!")
            return UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "")
        }
    }
}

