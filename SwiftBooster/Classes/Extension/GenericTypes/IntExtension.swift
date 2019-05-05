//
//  IntExtension.swift
//  SwiftBooster
//
//  Created by Sepehr Behroozi on 4/17/19.
//  Copyright © 2019 ayantech.ir. All rights reserved.
//

import Foundation

public extension Int {
    /// Returns a `String` representing this value
    func toString() -> String {
        return String(self)
    }
    
    func toInt64() -> Int64 {
        return Int64(self)
    }
    
    func toDouble() -> Double {
        return Double(self)
    }
    
    /// Returns a `String` representing this value separated by `ch` character
    func separateByCharacter(ch: String = "،") -> String {
        var result = ""
        let currentString = "\(self)"
        var counter = 0
        currentString.reversed().forEach {
            result += "\($0)"
            counter += 1
            if (counter % 3 == 0) && counter > 0 && counter < currentString.count {
                result += ch
            }
        }
        return String(result.reversed())
    }
}
