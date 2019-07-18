//
//  ViewController.swift
//  UIAlertViewController(ActionSheet)
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

    func createActionSheet(){
        
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: { (action) ->
            Void in
            print("Cancel button tapped")
            
        })
        
        let facebook = UIAlertAction(title: "Facebook", style: .default, handler: { (action)->
            Void in
            print("Facebook button tapped")
            
            
        })
        let twitter = UIAlertAction(title: "Twitter", style: .default, handler: { (action)->
            Void in
            print("Twitter button tapped")
            
            
        })
        let line = UIAlertAction(title: "Line", style: .default, handler: { (action)->
            Void in
            print("Line button tapped")
            
            
        })
        
        alert.addAction(cancel)
        alert.addAction(facebook)
        alert.addAction(twitter)
        alert.addAction(line)

        
        present(alert, animated: true, completion: nil)
        
    }
    
    
    
    
    
    
    
    @IBAction func actionSheetTapped(_ sender: Any) {
    
        createActionSheet()
    
    
    
}
    
}

