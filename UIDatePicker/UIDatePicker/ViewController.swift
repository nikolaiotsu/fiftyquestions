//
//  ViewController.swift
//  UIDatePicker
//
//  Created by nikolai ostonal on 2019/07/16.
//  Copyright © 2019 nikolai ostonal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var datePickerview: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePickerview.addTarget(self, action: #selector(ViewController.dateChanged(datePicker:)), for: .valueChanged)
        
        

        datePickerview.isHidden = true
        // Do any additional setup after loading the view.
        let tapRound = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        
        dateLabel.isUserInteractionEnabled = true
        
        dateLabel.addGestureRecognizer(tapRound)
    }
    
    @objc func dateChanged(datePicker: UIDatePicker){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yy"
        self.dateLabel.text = dateFormatter.string(from: datePickerview.date)
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil)
    {
        self.datePickerview.isHidden = false
       
        
    }

    @IBAction func backGroundButton(_ sender: Any) {
    
        self.datePickerview.isHidden = true

    
    }
    
    @IBAction func doneButton(_ sender: Any) {
    
       
       
         self.datePickerview.isHidden = true
    }
    
    
   
   
    
}

