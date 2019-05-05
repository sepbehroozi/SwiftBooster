//
//  Double.swift
//  driver
//
//  Created by Sepehr Behroozi on 2/18/18.
//  Copyright © 2018 Asanbar. All rights reserved.
//

import Foundation

public extension Double {
    /// returns a `String` representing this value
    func toString() -> String {
        return String(self)
    }
    
    func toInt() -> Int {
        return Int(self)
    }
}
