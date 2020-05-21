//
//  PageViewController.swift
//  ViewsAndNavigationControl
//
//  Created by Sebastián on 21/05/20.
//  Copyright © 2020 Sebastian Garcia. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController {

    private var myControllers: [UIViewController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myPurpleVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "vcPurple")
        let myCyanVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "vcCyan")
        let myGoogleWebVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "vcGoogle")
   
        myControllers.append(myPurpleVC)
        myControllers.append(myCyanVC)
        myControllers.append(myGoogleWebVC)
        
        setViewControllers([myPurpleVC], direction: .forward, animated: true, completion: nil)
        
        dataSource = self // This is to delegate the operations from the protocol
    }
}

// UIPageControllerDataSource: Protocol to implement different operations associated to the PageViewController, this PageViewController is a Controller that let us control Pages
extension PageViewController: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let index = myControllers.firstIndex(of: viewController) // This give us the index of the page where we are. (It searchs it on our Pages Array)
//        if index == 0 {
//            return myControllers.last // If we are at the first page, we return the next one
//        }
//        return myControllers.first // Else we return the first page.
        if index == myControllers.count - 1 {
            return myControllers.first
        }
        return myControllers[index! + 1]
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let index = myControllers.firstIndex(of: viewController)
//        if index == 0 {
//            return myControllers.last
//        }
//        return myControllers.first
        if index == myControllers.count - 1 {
            return myControllers.first
        }
        return myControllers[index! + 1]
    }
 
}
