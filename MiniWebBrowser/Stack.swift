//
//  Stack.swift
//  MiniWebBrowser
//
//  Created by Dustin Katzin on 9/6/17.
//  Copyright © 2017 Dustin Katzin. All rights reserved.
//

import Foundation

// Essentially taken directly from Apple Swift documentation on generics
// https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Generics.html
struct Stack<Element> {
    private var items = [Element]()
    func isEmpty() -> Bool {
        return items.isEmpty
    }
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
}
