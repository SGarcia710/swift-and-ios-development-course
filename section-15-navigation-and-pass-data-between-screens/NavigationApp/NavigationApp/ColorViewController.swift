//
//  ColorViewController.swift
//  NavigationApp
//
//  Created by Sebastián on 21/05/20.
//  Copyright © 2020 Sebastian Garcia. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {
    
    var color:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let supposedColor = color {
            self.title = supposedColor
            
            switch supposedColor {
            case "Black":
                self.view.backgroundColor = .black
            case "Red":
                self.view.backgroundColor = .red
            case "Pink":
                self.view.backgroundColor = .systemPink
            default:
                return
            }
            
        }
        
    }
}
