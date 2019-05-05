//
//  UITableView.swift
//  Pods-SwiftBooster_Tests
//
//  Created by Sepehr Behroozi on 4/29/19.
//

import UIKit

public extension UITableView {
    func register(_ nibsAndIdentifiers: (UINib, String)...) {
        nibsAndIdentifiers.forEach { self.register($0.0, forCellReuseIdentifier: $0.1) } 
    }
}
