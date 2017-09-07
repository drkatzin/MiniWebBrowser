//
//  BrowserModel.swift
//  MiniWebBrowser
//
//  Created by Dustin Katzin on 9/6/17.
//  Copyright © 2017 Dustin Katzin. All rights reserved.
//

import Foundation

class BrowserModel {
    private var backStack = Stack<String>()
    private var fwdStack = Stack<String>()
    var currentURL : String = ""
    
    func visitNewURL(url: String) {
        backStack.push(currentURL)
        currentURL = url
        fwdStack = Stack<String>()
    }
    
    func goBack() {
        if (!backStack.isEmpty()) {
            fwdStack.push(currentURL)
            currentURL = backStack.pop()
        }
    }
    
    func goForward() {
        if (!fwdStack.isEmpty()) {
            backStack.push(currentURL)
            currentURL = fwdStack.pop()
        }
    }
}
