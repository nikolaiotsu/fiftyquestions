//
//  ViewController.swift
//  UIAlertViewController(AlertView)
//
//  Created by nikolai ostonal on 2019/07/15.
//  Copyright © 2019 nikolai ostonal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func createAlert(){
        
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .alert)
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: { (action) ->
            Void in
            print("Cancel button tapped")
            
        })
        
        let ok = UIAlertAction(title: "OK", style: .default, handler: { (action)->
            Void in
            print("OK button tapped")
            
            
        })
        
        alert.addAction(cancel)
        alert.addAction(ok)
        
        present(alert, animated: true, completion: nil)
        
        }
    
    @IBAction func AlertPress(_ sender: Any) {
        
        createAlert()
    
    }
    
}


