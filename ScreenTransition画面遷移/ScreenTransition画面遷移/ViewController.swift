//
//  ViewController.swift
//  ScreenTransition画面遷移
//
//  Created by nikolai ostonal on 2019/07/19.
//  Copyright © 2019 nikolai ostonal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    /*
 Screen transition between 2 screens. (present / dissmiss)
 (A screen → B screen, B screen → A screen)
 A return button is added to the B screen.
 */
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    @IBAction func backButton(_ sender: Any) {
   
         dismiss(animated: true, completion: nil)
    
    }
    

}
    


