//
//  ViewController.swift
//  FabricaAutomoviles
//
//  Created by Sebastián on 27/05/20.
//  Copyright © 2020 Sebastian Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var carType:Int?

    @IBOutlet weak var normalCarButton: UIButton!
    @IBOutlet weak var sportsCarButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func createNormalCar(_ sender: Any) {
        
        carType = 0
        performSegue(withIdentifier: "segueCarDetail", sender: self)
    }
    
    @IBAction func createSportsCar(_ sender: Any) {
        carType = 1
        performSegue(withIdentifier: "segueCarDetail", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destiny = segue.destination as? CarDetailViewController {
            destiny.carType = self.carType
        }
    }
}

