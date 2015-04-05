//
//  TableViewController.swift
//  012-Word-Color-Lean-View-Controller-With-UITableView-UICollectionView
//
//  Created by Audrey Li on 4/5/15.
//  Copyright (c) 2015 com.shomigo. All rights reserved.
//

import UIKit



class TableViewController: UIViewController {
    
        var belief = WordColor(name: "Belief", color: MDColors.blue.P500)
        var hope = WordColor(name: "Hope", color: MDColors.red.P500)
        var valor = WordColor(name: "Valor", color: MDColors.red.P900)
        var magic = WordColor(name: "Magic", color: MDColors.purple.P500)
        var faith = WordColor(name: "Faith", color: MDColors.green.P500)
        var victory = WordColor(name: "Victory", color: MDColors.deep_purple.P500)
        var happiness = WordColor(name: "Happiness", color: MDColors.pink.P500)
        var fear = WordColor(name: "Fear", color: MDColors.grey.P500)
        var lust = WordColor(name: "Lust", color: MDColors.red.P400)
        var spectacular = WordColor(name: "Spectacular", color: MDColors.orange.P500)

        var items:[String: [AnyObject]]!
    
        var dataSource: MultiSectionTableViewDataSource!
    
        @IBOutlet weak var tableView: UITableView!
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // pass a dictionary to datasource, the key will be the section title 
            items = ["hero":[belief, hope, valor, magic], "born": [faith, victory, happiness, fear, lust, spectacular]]
            
            self.dataSource = MultiSectionTableViewDataSource(items: self.items, cellIdentifier: "taCell", configureBlock: { (cell, item) -> () in
                if let actualCell = cell as? CustomTableViewCell {
                    actualCell.configureForItem(item!)
                }
            })
    
            tableView.dataSource = self.dataSource
            tableView.delegate = self.dataSource
            
           
        }

//    var items = ["Good morning", "Hello", "Bonjour", "Ciao", "Good morning"]
//    var dataSource: TableViewDataSource!
//    
//    @IBOutlet weak var tableView: UITableView!
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        self.dataSource = TableViewDataSource(items: self.items, cellIdentifier: "taCell", configureBlock: { (cell, item) -> () in
//            if let actualCell = cell as? CustomTableViewCell {
//                actualCell.configureForItem(item!)
//            }
//        })
//        
//        tableView.dataSource = self.dataSource
//        
//       
//    }

   
}
