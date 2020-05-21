//
//  ViewController.swift
//  ViewsAndNavigationControl
//
//  Created by Sebastián on 21/05/20.
//  Copyright © 2020 Sebastian Garcia. All rights reserved.
//

import UIKit
import WebKit
import MapKit

class ViewController: UIViewController {

    // Outlets
    
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var mySecondView: UIView!
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var myMapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set title to this screen
        title = "Home"
        
        // How to use the WebView
        myWebView.load(URLRequest(url: URL(string: "https://dev.to")!))
    
        // How to use Map
        myMapView.centerCoordinate = CLLocationCoordinate2D(latitude: 42.6074875, longitude: -8.3132621)
    }

    
    // Actions
    @IBAction func myButtonAction(_ sender: Any) {
        mySecondView.isHidden = !mySecondView.isHidden
    }
    
}

