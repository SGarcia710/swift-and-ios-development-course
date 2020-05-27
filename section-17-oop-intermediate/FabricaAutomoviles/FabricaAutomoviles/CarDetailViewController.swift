//
//  CarDetailViewController.swift
//  FabricaAutomoviles
//
//  Created by Sebastián on 27/05/20.
//  Copyright © 2020 Sebastian Garcia. All rights reserved.
//

import UIKit

class CarDetailViewController: UIViewController {
    @IBOutlet weak var carInfoLabel: UILabel!
    @IBOutlet weak var carImage: UIImageView!
    
    var carType:Int?
    var normalCar:Car?
    var sportsCar:SportsCar?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        switch carType {
        case 0:
            normalCar = Car()
            carImage.image = UIImage(named: "mazda6")
            carInfoLabel.text = "Car was successfully builded."
        case 1:
            sportsCar = SportsCar()
            carImage.image = UIImage(named: "porsche911")
            carInfoLabel.text = "Sports car was successfully builded."
        default:
            print("Error")
        }
    }
    
    @IBAction func showCarInfo(_ sender: Any) {
        switch carType {
        case 0:
            carInfoLabel.text = """
            Normal Car
            Fuel: \(normalCar!.fuelPercentage)%
            """
        case 1:
            carInfoLabel.text = """
            \(sportsCar!.name)
            Engine: \(sportsCar!.engine)
            Horsepower: \(sportsCar!.horsepower)
            Torque: \(sportsCar!.torque)
            Turbo: \(sportsCar!.turbo)
            Fuel: \(sportsCar!.fuelPercentage)%
            """
        default:
            print("Error")
        }
    }
    
    @IBAction func turnOnCar(_ sender: Any) {
        carInfoLabel.text = "Turned on the car"
    }
    
    @IBAction func turnOffCar(_ sender: Any) {
        carInfoLabel.text = "Turned off the car"
    }
    
    @IBAction func speedUpCar(_ sender: Any) {
        switch carType {
        case 0:
            carInfoLabel.text = """
            \(normalCar!.speedUp())
            Fuel: \(normalCar!.fuelPercentage)%
            """
        case 1:
            carInfoLabel.text = """
            \(sportsCar!.speedUp())
            Fuel: \(sportsCar!.fuelPercentage)%
            """
        default:
            print("Error")
        }
    }
}
