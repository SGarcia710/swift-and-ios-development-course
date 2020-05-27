//
//  MyCustomCollectionViewCell.swift
//  CollectionViews
//
//  Created by Sebastián on 22/05/20.
//  Copyright © 2020 Sebastian Garcia. All rights reserved.
//

import UIKit

class MyCustomCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var myCustomLabel: UILabel!
    @IBOutlet weak var myCustomImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColor = .lightGray
        
        myCustomLabel.font = UIFont.boldSystemFont(ofSize: 20)
        myCustomLabel.textColor = .white
        
        
    }

}
