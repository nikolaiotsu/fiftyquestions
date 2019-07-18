//
//  ViewController.swift
//  UICollectionView(NoSection)
//
//  Created by nikolai ostonal on 2019/07/17.
//  Copyright © 2019 nikolai ostonal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let treeImages: [UIImage] = [
        
        UIImage(named: "Banyan")!,
        UIImage(named: "Neem")!,
        UIImage(named: "3.-Peepal-tree")!,
        UIImage(named: "4.-Aloe-Vera-tree")!,
        UIImage(named: "5.-Tulsi-plant")!,
        UIImage(named: "6.-Amla-plant")!,
        UIImage(named: "7.-Eucalyptus")!,
        UIImage(named: "8.-Mahagony")!,
        UIImage(named: "9.-Indian-rosewood")!,

        ]
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        // Do any additional setup after loading the view.
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let noOfCellsInRow = 3
        
        let flowLayout = collectionViewLayout as! UICollectionViewFlowLayout
        
        let totalSpace = flowLayout.sectionInset.left
            + flowLayout.sectionInset.right
            + (flowLayout.minimumInteritemSpacing * CGFloat(noOfCellsInRow - 1))
        
        let size = Int((collectionView.bounds.width - totalSpace) / CGFloat(noOfCellsInRow))
        
        return CGSize(width: size, height: size)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return treeImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        cell.treeImageView.image = treeImages[indexPath.item]
        
        return cell
    }
    
   


}

