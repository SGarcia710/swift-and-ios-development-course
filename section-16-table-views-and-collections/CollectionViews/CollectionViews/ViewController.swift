//
//  ViewController.swift
//  CollectionViews
//
//  Created by Sebastián on 22/05/20.
//  Copyright © 2020 Sebastian Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let names = ["Luisa", "Sebastián", "Jonatan", "Natalia", "Carolina", "Naylee", "Rocio", "Robert Mario", "Daniela"]

    private let myCellWidth = UIScreen.main.bounds.width / 2
    // UIScreen.main.bounds.width  <- this is how we get the total width of the screen.
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Collection view configurations:
        myCollectionView.backgroundColor = .systemPink
        
        // Collection View Protocols:
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        
        // Always after we create custom cells, we need to register them
        myCollectionView.register(UINib(nibName: "MyCustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "mycell")
    }


}

// MARK: - UICollectionViewDelegate
extension ViewController: UICollectionViewDelegate {
    
    // Listen clicks
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(names[indexPath.row])
    }
}

// MARK: - UICollectionViewDataSource
extension ViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        if section == 0 {
//            return 2
//        }
        return names.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // A difference from the tableView its that we cannot create a reusable cell, we always will have to create and return a custom cell.
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mycell", for: indexPath) as? MyCustomCollectionViewCell
       
        cell!.myCustomLabel.text = names[indexPath.row]
        
        return cell!
    }
    
    
}


// MARK: - UICollectionViewDelegateFlowLayout
extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if indexPath.section == 0 {
            return CGSize(width: myCellWidth, height: myCellWidth)
        }
        return CGSize(width: myCellWidth * 2, height: myCellWidth * 2)
        
    }
}
