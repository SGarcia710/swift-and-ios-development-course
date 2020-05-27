//
//  MyCustomTableViewCell.swift
//  TableView
//
//  Created by Sebastián on 22/05/20.
//  Copyright © 2020 Sebastian Garcia. All rights reserved.
//

import UIKit

class MyCustomTableViewCell: UITableViewCell {

    @IBOutlet weak var myFirstLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var mySecondLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        myFirstLabel.font  = UIFont.boldSystemFont(ofSize: 20)
        myFirstLabel.textColor = .blue
        
        mySecondLabel.numberOfLines = 0
        
        backgroundColor = .magenta
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
        print(myFirstLabel.text ?? "")
    }
    
}
