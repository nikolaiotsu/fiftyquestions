//
//  ViewController.swift
//  PassingData24
//
//  Created by nikolai ostonal on 2019/07/25.
//  Copyright © 2019 nikolai ostonal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var textField: UITextField!
    
     var nameText = ""
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func done(_ sender: Any) {
    
     self.nameText = textField.text!
        performSegue(withIdentifier: "name", sender: self)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! NameViewController
        vc.finalName = self.nameText
    }
    




}

