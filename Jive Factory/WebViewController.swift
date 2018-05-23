//
//  WebViewController.swift
//  Jive Factory
//
//  Created by Diane Korongy on 2/10/18.
//  Copyright © 2018 Diane Korongy. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet weak var siteWebView: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let jiveURL = URL (string: "http://www.thejivefactory.com")
        let myRequest = URLRequest(url: jiveURL! as URL)
        siteWebView.load(myRequest as URLRequest)
        
 

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
