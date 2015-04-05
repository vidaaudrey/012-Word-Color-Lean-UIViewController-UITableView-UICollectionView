//
//  TableViewDataSource.swift
//  012-Word-Color-Lean-View-Controller-With-UITableView-UICollectionView
//
//  Created by Audrey Li on 4/5/15.
//  Copyright (c) 2015 com.shomigo. All rights reserved.
//

import Foundation
import UIKit

class MultiSectionTableViewDataSource: NSObject, UITableViewDataSource, UITableViewDelegate{
    var items: NSArray = [[]]
    var itemIdentifier: String?
    var configureCellBlock: TableViewCellConfigureBlock?
    
    init(items: NSArray, cellIdentifier: String, configureBlock: TableViewCellConfigureBlock){
        self.items = items
        self.itemIdentifier = cellIdentifier
        self.configureCellBlock = configureBlock
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return items.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items[section].count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(self.itemIdentifier!, forIndexPath: indexPath) as UITableViewCell
        let item: AnyObject = itemAtIndexPath(indexPath)
        
        if (self.configureCellBlock != nil) {
            self.configureCellBlock!(cell: cell, item: item)
        }
        
        return cell
    }
    func itemAtIndexPath(indexPath: NSIndexPath) -> AnyObject {
        return self.items[indexPath.section][indexPath.row]
    }
    
    // viewForFooterInSection is a delegate method 
    func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView(frame: CGRectMake(0, 0, tableView.frame.size.width, 20))
        footerView.backgroundColor = UIColor.whiteColor()
        return footerView
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
}