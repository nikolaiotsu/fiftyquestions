//
//  ViewController.swift
//  UITextField
//
//  Created by nikolai ostonal on 2019/07/16.
//  Copyright © 2019 nikolai ostonal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        
    super.viewDidLoad()
        
        textField.delegate = self;
        self.hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view.
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let currentText = textField.text ?? ""
        guard let stringRange = Range(range, in: currentText) else { return false }
        
        let updatedText = currentText.replacingCharacters(in: stringRange, with: string)
        
        return updatedText.count <= 30
    }
    
    
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
            }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}


        // Do any additional setup after loading the view.


