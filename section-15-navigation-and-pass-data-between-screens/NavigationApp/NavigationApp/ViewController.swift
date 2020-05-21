//
//  ViewController.swift
//  NavigationApp
//
//  Created by Sebastián on 21/05/20.
//  Copyright © 2020 Sebastian Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var sentColor: String = ""
    
    func pushPage(withColor color: String) {
        sentColor = color
        performSegue(withIdentifier: "ColorVC", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // Navigate to specific views with their Segue identifier.
    @IBAction func blackButton(_ sender: Any) {
        pushPage(withColor: "Black")
    }
    @IBAction func pinkButton(_ sender: Any) {
        pushPage(withColor: "Pink")
    }
    @IBAction func redButton(_ sender: Any) {
        pushPage(withColor: "Red")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorViewController {
            destination.color = sentColor
        }
    }
}

