//
//  ViewController.swift
//  UITabBarController
//
//  Created by nikolai ostonal on 2019/07/18.
//  Copyright © 2019 nikolai ostonal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    /* Manage multiple UIViewController with UITabBarController,
    Implement tab menu.
    (Add using Storyboard)
    Also, add an icon to the tab
    
    Icons can be obtained from any of the sites below
    https://www.iconfinder.com/
 
*/
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let mainTabBarController = segue.destination as? MainTabBarController {
            
            
        }
    }


}

