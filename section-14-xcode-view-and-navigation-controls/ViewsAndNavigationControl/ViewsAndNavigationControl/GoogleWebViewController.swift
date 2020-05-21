//
//  GoogleWebViewController.swift
//  ViewsAndNavigationControl
//
//  Created by Sebastián on 21/05/20.
//  Copyright © 2020 Sebastian Garcia. All rights reserved.
//

import UIKit
import WebKit

class GoogleWebViewController: UIViewController {
    
    // Outlet
    @IBOutlet weak var myGoogleWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myGoogleWebView.load(URLRequest(url: URL(string: "https://google.com")!))
    }
}
