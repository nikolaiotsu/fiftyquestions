//
//  TestPVC.swift
//  PageViewController
//
//  Created by nikolai ostonal on 2019/07/24.
//  Copyright © 2019 nikolai ostonal. All rights reserved.
//

import UIKit

class TestPVC: UIPageViewController {

    lazy var subViewControllers: [UIViewController] = {
        return [
                UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FirstVC") as! FirstVC,
                UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC") as! SecondVC,
                UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ThirdVC") as! ThirdVC,
                UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FourthVC") as! FourthVC,

        ]
        
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        delegate = self
        setViewControllerFromIndex(index: 0)

        // Do any additional setup after loading the view.
    }
    
    func setViewControllerFromIndex(index: Int) {
        
        self.setViewControllers([subViewControllers[index]], direction: UIPageViewController.NavigationDirection.forward, animated: true, completion: nil)
        
        
    }
    
    
    

}

extension TestPVC: UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return subViewControllers.count
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let currentIndex: Int = subViewControllers.index(of: viewController) ?? 0
        if currentIndex <= 0 {
            return nil
        }
        return subViewControllers[currentIndex-1]
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let currentIndex: Int = subViewControllers.index(of: viewController) ?? 0
        if currentIndex >= subViewControllers.count-1 {
            return nil
        }
        return subViewControllers[currentIndex+1]

    }
    
}
