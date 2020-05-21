//
//  PurpleViewController.swift
//  ViewsAndNavigationControl
//
//  Created by Sebastián on 21/05/20.
//  Copyright © 2020 Sebastian Garcia. All rights reserved.
//

import UIKit

class PurpleViewController: UIViewController {

    @IBOutlet weak var mySearchBar: UISearchBar!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabel.isHidden = true
        
        mySearchBar.delegate = self

    }

}


extension PurpleViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        mySearchBar.resignFirstResponder() // This hides the keyboard
        
        myLabel.text = mySearchBar.text
        myLabel.isHidden = false
    }
}
