//
//  CollectionViewCell.swift
//  012-Word-Color-Lean-View-Controller-With-UITableView-UICollectionView
//
//  Created by Audrey Li on 4/4/15.
//  Copyright (c) 2015 com.shomigo. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var label: UILabel!
 
    func configureForItem(item:AnyObject) {
     //   label.text = item as? String
        if let wordColor = item as? WordColor {
            label.text = wordColor.name
            self.backgroundColor = wordColor.color
        }
        
    }
    
}
