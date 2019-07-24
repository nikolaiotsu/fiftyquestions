//
//  ViewController.swift
//  PageViewController
//
//  Created by nikolai ostonal on 2019/07/24.
//  Copyright © 2019 nikolai ostonal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var testPVC: TestPVC!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PVCSegue" {
            if segue.destination.isKind(of: TestPVC.self) {
                testPVC = segue.destination as! TestPVC
                
            }
            
        }
    }


}

