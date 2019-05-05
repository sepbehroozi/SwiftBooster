//
//  StringExtension.swift
//  SwiftBooster
//
//  Created by Sepehr Behroozi on 4/17/19.
//  Copyright © 2019 ayantech.ir. All rights reserved.
//

import Foundation

public extension String {
    
    /// A Boolean value indicating whether a string has at least one characters.
    @inlinable var isNotEmpty: Bool {
        return self.isEmpty.not
    }
    
    /// Returns `true` if this string is empty or consists solely of whitespace characters.
    @inlinable var isBlank: Bool {
        return count == 0 || self.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).isEmpty 
    }
    
    /// Returns `true` if this char sequence is not empty and contains some characters except of whitespace characters.
    @inlinable var isNotBlank: Bool {
        return self.isBlank.not
    }
    
    /// Parses the string as an [Int] number and returns the result, or nil if the string could not be parsed as [Int]
    func toInt() -> Int? {
        return Int(self)
    }
    
    /// Parses the string as an [Double] number and returns the result, or nil if the string could not be parsed as [Double]
    func toDouble() -> Double {
        return Double(self)!
    }
    
    /// Parses the string as an [Bool] value and returns the result, or nil if the string was neither true nor false.
    func toBool() -> Bool? {
        switch self.lowercased() {
        case "true":
            return true
        case "false":
            return false
        default:
            return nil
        }
    }

    /// Tries to make a JSONObject (aka [String: Any]) from this string and returns the value
    func toJsonObject() -> JSONObject? {
        guard let data = self.data(using: .utf8) else {
            return nil
        }
        do {
            return try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? JSONObject
        } catch {
            return nil
        }
    }
    
    /// Tries to make a JSONArray (aka Array<JSONObject>) from this string and returns the value
    func toJsonArray() -> JSONArray? {
        guard let data = self.data(using: .utf8) else {
            return nil
        }
        do {
            return try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? JSONArray
        } catch {
            return nil
        }
    }
    
    
    subscript (i: Int) -> Character {
        return self[index(startIndex, offsetBy: i)]
    }
    subscript (bounds: CountableRange<Int>) -> Substring {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return self[start ..< end]
    }
    subscript (bounds: CountableClosedRange<Int>) -> Substring {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return self[start ... end]
    }
    subscript (bounds: CountablePartialRangeFrom<Int>) -> Substring {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(endIndex, offsetBy: -1)
        return self[start ... end]
    }
    subscript (bounds: PartialRangeThrough<Int>) -> Substring {
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return self[startIndex ... end]
    }
    subscript (bounds: PartialRangeUpTo<Int>) -> Substring {
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return self[startIndex ..< end]
    }
    
}


public extension Substring {
    subscript (i: Int) -> Character {
        return self[index(startIndex, offsetBy: i)]
    }
    subscript (bounds: CountableRange<Int>) -> Substring {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return self[start ..< end]
    }
    subscript (bounds: CountableClosedRange<Int>) -> Substring {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return self[start ... end]
    }
    subscript (bounds: CountablePartialRangeFrom<Int>) -> Substring {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(endIndex, offsetBy: -1)
        return self[start ... end]
    }
    subscript (bounds: PartialRangeThrough<Int>) -> Substring {
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return self[startIndex ... end]
    }
    subscript (bounds: PartialRangeUpTo<Int>) -> Substring {
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return self[startIndex ..< end]
    }
}
