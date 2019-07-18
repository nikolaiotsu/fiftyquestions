//
//  ViewController.swift
//  UIPickerView
//
//  Created by nikolai ostonal on 2019/07/16.
//  Copyright © 2019 nikolai ostonal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource     {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet var pickerView: UIPickerView!
    
    var pickerData: [String] = [String]()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
        pickerView.isHidden = true
        
        // Do any additional setup after loading the view.
        
        let tapRound = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
    
        label.isUserInteractionEnabled = true
        
        label.addGestureRecognizer(tapRound)
        
        pickerData = ["Mario", "Mewtwo", "Marth", "Snake", "Kirby"]
    
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // This method is triggered whenever the user makes a change to the picker selection.
        // The parameter named row and component represents what was selected.
        self.label.text = pickerData[row];
    }
    
   
    @IBAction func backButton(_ sender: Any) {
    
     self.pickerView.isHidden = true
    
    }
    
    @IBAction func doneButton(_ sender: Any) {
        
        
        self.pickerView.isHidden = true
        
    }
    
    
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil)
    {
        self.pickerView.isHidden = false
        
        
    }
    
   
    
    
    
    


}

    
    


