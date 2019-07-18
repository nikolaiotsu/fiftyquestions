//
//  ViewController.swift
//  WebView 2.1.6
//
//  Created by nikolai ostonal on 2019/07/16.
//  Copyright © 2019 nikolai ostonal. All rights reserved.
//

import UIKit
import WebKit


class ViewController: UIViewController {

    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let url = URL(string: "http://www.apple.com")
        let request = URLRequest(url: url!)
        
        webView.load(request)
        
        
        
    }
    
    
    @IBAction func backButton(_ sender: Any) {
        
        if webView.canGoBack {
            
            webView.goBack()

            
        }
    }
    
    @IBAction func forwardButton(_ sender: Any) {
        
        if webView.canGoForward {
            
            webView.goForward()
            
        }
        
    }
    
    @IBAction func refreshButton(_ sender: Any) {
    
        webView.reload()
    
    }
    

}

