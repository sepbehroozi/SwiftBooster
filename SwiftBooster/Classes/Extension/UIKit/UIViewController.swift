//
//  UIViewController.swift
//  driver
//
//  Created by Sepehr Behroozi on 2/17/18.
//  Copyright © 2018 Asanbar. All rights reserved.
//

import UIKit

public extension UIViewController {
    /// Returns current `ViewController`s class name.
    class var identifier: String {
        return String(describing: self)
    }
    
    /// Returns current `ViewController`s class name with the String `NC` in the end of it.
    class var navigationIdentifier: String {
        return "\(String(describing: self))NC"
    }
}
