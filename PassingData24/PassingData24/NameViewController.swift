//
//  NameViewController.swift
//  PassingData24
//
//  Created by nikolai ostonal on 2019/07/25.
//  Copyright © 2019 nikolai ostonal. All rights reserved.
//

import UIKit

class NameViewController: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    
    var finalName = ""
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "Hello there" + " " + finalName + "!"

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
