//
//  ViewController.swift
//  MiniWebBrowser
//
//  Created by Dustin Katzin on 9/6/17.
//  Copyright © 2017 Dustin Katzin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Outlets
    
    @IBOutlet weak var urlInput: UITextField!
    
    //MARK: Actions
    
    @IBAction func goToURL(_ sender: Any) {
    }
    
    @IBAction func goBack(_ sender: Any) {
    }
    
    @IBAction func goForward(_ sender: Any) {
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

