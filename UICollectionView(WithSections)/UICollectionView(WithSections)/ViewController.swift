//
//  ViewController.swift
//  UICollectionView(WithSections)
//
//  Created by nikolai ostonal on 2019/07/17.
//  Copyright © 2019 nikolai ostonal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout  {

    
    @IBOutlet weak var collectionView: UICollectionView!
    //add animal names
    let animalTypes = [
        "Mammals",
        " ",
        "Reptiles",
        " ",
        "Fish",
        " ",
        "Birds",
        " ",
        "Plants",
        " "
                    ]
    
    //add animal image files
    
    let animalImages: [UIImage] = [
            UIImage(named: "squirrel")!,
            UIImage(named: "porcupine")!,
            UIImage(named: "iguana")!,
            UIImage(named: "komodo")!,
            UIImage(named: "goldfish")!,
            UIImage(named: "koi")!,
            UIImage(named: "bluejay")!,
            UIImage(named: "robin")!,
            UIImage(named: "fernplant")!,
            UIImage(named: "spiderplant")!,
    
    ]
    
    //Display an arbitrary string in each section and an arbitrary image in each box.
    //(It will be a grid of 5 rows and 2 columns.)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        // Do any additional setup after loading the view.
    
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return animalImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
       
        cell.animalLabel.text = animalTypes[indexPath.item]
        cell.animalImageView.image = animalImages[indexPath.item]
        
        
        
        return cell
    }


}

