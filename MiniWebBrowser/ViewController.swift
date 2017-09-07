//
//  ViewController.swift
//  MiniWebBrowser
//
//  Created by Dustin Katzin on 9/6/17.
//  Copyright © 2017 Dustin Katzin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var browserModel : BrowserModel = BrowserModel()
    
    //MARK: Outlets
    
    @IBOutlet weak var urlInput: UITextField!
    @IBOutlet weak var webViewDisplay: UIWebView!
    
    //MARK: Actions
    
    func displayURLContents(urlString: String) {
        let url = URL(string: urlString)!
        webViewDisplay.loadRequest(URLRequest(url: url))
        //TO DO: resolve race condition
        //Should finish loading before allowing the user to make another loadRequest
    }
    
    @IBAction func goToURL(_ sender: Any) {
        
        if let newURL = urlInput.text {
            browserModel.visitNewURL(url: newURL)
            displayURLContents(urlString: browserModel.currentURL)
        }
    }
    
    @IBAction func goBack(_ sender: Any) {
        browserModel.goBack()
        displayURLContents(urlString: browserModel.currentURL)
    }
    
    @IBAction func goForward(_ sender: Any) {
        browserModel.goForward()
        displayURLContents(urlString: browserModel.currentURL)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

