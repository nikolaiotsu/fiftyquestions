//
//  ViewController.swift
//  UIButton
//
//  Created by nikolai ostonal on 2019/07/14.
//  Copyright © 2019 nikolai ostonal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonPress(_ sender: UIButton) {
        
        let image : NSArray = [ UIImage(named: "image_0")!,
                                UIImage(named: "image_1")!,
                                UIImage(named: "image_2")!,
                                UIImage(named: "image_3")!,
                                UIImage(named: "image_4")!,
                                ]
        
        let imagerange: UInt32 = UInt32(image.count)
        let randomimage = Int(arc4random_uniform(imagerange))
        let generatedimage = image.object(at: randomimage)
        self.imageView.image = generatedimage as? UIImage
        
    }

      
    
}
    
    

    
    



