//
//  CollectionViewController.swift
//  012-Word-Color-Lean-View-Controller-With-UITableView-UICollectionView
//
//  Created by Audrey Li on 4/4/15.
//  Copyright (c) 2015 com.shomigo. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController {

   // var items = ["Good morning", "Hello", "Bonjour", "Ciao", "Good morning"]
    
    var items:[WordColor]!
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
    var amor = WordColor(name: "Amour", color: MDColors.red.P500)
    var treasure = WordColor(name: "Treasure", color: MDColors.yellow.P500)


    var dataSource:CollectionViewDataSource!

    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        items = [belief, hope, valor, magic,faith, victory, happiness, fear, lust, spectacular, amor, treasure]
        self.dataSource = CollectionViewDataSource(items: self.items, cellIdentifier: "coCell", configureBlock: { (cell, item) -> () in
            if let actualCell = cell as? CustomCollectionViewCell {
                actualCell.configureForItem(item!)
            }
        })

        collectionView.dataSource = self.dataSource
        
    }
    

}
