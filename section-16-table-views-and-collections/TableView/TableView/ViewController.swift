//
//  ViewController.swift
//  TableView
//
//  Created by Sebastián on 21/05/20.
//  Copyright © 2020 Sebastian Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let countries = ["Colombia", "España", "México", "Jerusalen", "Chile", "Perú", "Estados Unidos", "Reino Unido", "Italia", "Rusia"]
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Using the TableView's dataSource protocol we can configure how many items its going to have and also what and how its going to show us.
        myTableView.dataSource = self
        
        // Detect Click in the TableView: Just implement the Delegate Protocol
        myTableView.delegate = self // This protocol let us listen events
        
        
        // With this line we can avoid the empty cells below the cells with content. Just adding an Empty UIView
//        myTableView.tableFooterView = UIView()
        
        
        // Use a custom cell
        myTableView.register(UINib(nibName: "MyCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "mycustomcell")
    }


}

extension ViewController: UITableViewDataSource {
    
    /* Header configuration */
    // Here we can set the headers title for each section.
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Simple Cells"
        }
        return "Custom Cells"
    }
    
    // Here we can setup the height of the headers
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    
    // Here we can create complex headers
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let myCustomHeader = UILabel()
        
        myCustomHeader.backgroundColor = .orange
        myCustomHeader.textColor = .white
        myCustomHeader.textAlignment = .center
        myCustomHeader.font = UIFont.systemFont(ofSize: 32, weight: UIFont.Weight.bold)
        
        // You will have to setup manually the text for each section, because if you're returning custom Headers, the titleForHeaderInSection will be override
        if section == 0 {
            myCustomHeader.text = "Simple Cells"
        } else {
            myCustomHeader.text = "Custom Cells"
        }

        return myCustomHeader
    }
    
    /* Footer configuration */
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if section == 0 {
            return "End of the simple cells"
        }
        return "End of the custom cells"
    }
    
    /* Table configuration */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // This is going to be the number of items our table its going to show us.
        return countries.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    // Height for each row
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.section == 0 {
            return 50
        }
        // Dynamic Cell Height
        return UITableView.automaticDimension
    }
    
    // Setting up each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
             // We try to get a reusable cell
             var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
             if cell == nil {
                 // If it doesnt exist, because its a wrong id or its the first cell with this id, we create a new cell
                 cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
                 cell?.backgroundColor = .systemPink
                 cell?.textLabel?.font = UIFont.systemFont(ofSize: 28)
                 
                 cell?.accessoryType = .disclosureIndicator
             }
            
             // Here we set each item on our table.
             // Row its going to be from 0 to the countries.count we setted up in the previous function
             cell!.textLabel?.text = countries[indexPath.row]
             return cell!
        }
        
        // This kind of dequeueReusableCell will creates the cell if it doesnt exists. So it never wont be nil, then we can create it as a const (let)
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycustomcell", for: indexPath) as? MyCustomTableViewCell
        
        // Now we have access to the custom properties we created at its class
        cell!.myFirstLabel.text = String(indexPath.row + 1)
        cell!.mySecondLabel.text = countries[indexPath.row]
        
        if indexPath.row == 2 {
            cell!.mySecondLabel.text = "This is a custom text for an specific cell in the section 2"
        }
        
        return cell!

    }
}


extension ViewController: UITableViewDelegate {
    // Hear clicks
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // This function is called every click
        print(indexPath.row)
    }
}
