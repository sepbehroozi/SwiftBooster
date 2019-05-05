//
//  UITextField.swift
//  SwiftBooster
//
//  Created by Sepehr Behroozi on 4/17/19.
//  Copyright © 2019 ayantech.ir. All rights reserved.
//

import UIKit

public extension UITextField {
    /// Returns current text in not-nil string
    var notNilText: String {
        return self.text ?? ""
    }
}
