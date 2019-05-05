//
//  JSON.swift
//  SwiftBooster
//
//  Created by Sepehr Behroozi on 4/17/19.
//  Copyright © 2019 ayantech.ir. All rights reserved.
//

import Foundation

/// Typealias for [String: Any]
public typealias JSONObject = [String: Any]

/// Typealias for [Any]
public typealias JSONArray = [Any]

public func getValue<T>(input: Any?, subscripts: Any...) -> T? {
    
    var extractingValue = input
    
    subscripts.forEach { (key) in
        if let intKey = key as? Int {
            extractingValue = (extractingValue as? [Any])?[intKey]
        }
        if let stringKey = key as? String {
            extractingValue = (extractingValue as? [String: Any])?[stringKey]
        }
    }
    
    switch T.self {
    case is Int.Type:
        let result = extractingValue as? Int ?? (extractingValue as? String)?.toInt()
        return result as? T
    case is Double.Type:
        let result = extractingValue as? Double ?? (extractingValue as? String)?.toDouble()
        return result as? T
    case is String.Type:
        let result = extractingValue as? String ?? (extractingValue as? Int)?.toString() ?? (extractingValue as? Double)?.toString()
        if result == "null" {
            return nil
        } else {
            return result as? T
        }
    case is Bool.Type:
        var result = extractingValue as? Bool ?? (extractingValue as? String)?.toBool()
        if result == nil {
            if let resultInt = extractingValue as? Int {
                result = resultInt == 1
            }
        }
        return result as? T
    default:
        return extractingValue as? T
    }
}
