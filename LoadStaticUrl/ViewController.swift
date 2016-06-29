//
//  ViewController.swift
//  LoadStaticUrl
//
//  Created by ahmed elnaqah on 6/29/16.
//  Copyright © 2016 Elnaqah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView:UIWebView!;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let bundle = NSBundle.mainBundle();
        if let pageUrl = bundle.URLForResource("index", withExtension: "html"){
            let urlreq = NSURLRequest(URL: pageUrl);
            self.webView.loadRequest(urlreq);
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

