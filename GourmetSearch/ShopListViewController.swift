//
//  ViewController.swift
//  GourmetSearch
//
//  Created by Tsuyoshi on 2015/09/03.
//  Copyright (c) 2015年 cosmocity. All rights reserved.
//

import UIKit

class ShopListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - UITableViewDelegate
    func tableView(tableView: UITableView,
        heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
            // セルの高さを返す
            return 100
    }

    // MARK: - UITableViewDataSource
    func tableView(tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
            return 20
    }
    
    func tableView(tableView: UITableView,
        cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            if indexPath.section == 0 {
                    let cell = tableView.dequeueReusableCellWithIdentifier("ShopListItem") as! ShopListItemTableViewCell
                    cell.name.text = "\(indexPath.row)"
                    return cell
            }
            return UITableViewCell()
    }
}

