//
//  ArrayExtension.swift
//  SwiftBooster
//
//  Created by Sepehr Behroozi on 4/17/19.
//  Copyright © 2019 ayantech.ir. All rights reserved.
//

import Foundation

public extension Collection {
    
    /// Returns `true` if the array is not empty.
    var isNotEmpty: Bool {
        return self.isEmpty.not
    }
    
    /// Same as map(:) with index parameter
    func mapIndexed<T>(_ transform: (Element, Int) throws -> T) rethrows -> [T] {
        var result = [T]()
        try forEachIndexed { (element, index) in
            try result.append(transform(element, index))
        }
        return result
    }
    
    /// Same as forEach with index parameter
    func forEachIndexed(_ body: (_ item: Element, _ index: Int) throws -> Void) rethrows {
        var counter = 0
        for element in self {
            try body(element, counter)
            counter += 1
        }
    }
    
    /// Same as reduce
    func reduceIndexed<Result>(_ initialResult: Result, _ nextPartialResult: (_ previousReslt: Result, _ currentItem: Element, _ index: Int) throws -> Result) rethrows -> Result {
        var index = 0
        var accumulator = initialResult
        for element in self {
            accumulator = try nextPartialResult(accumulator, element, index)
            index += 1
        }
        return accumulator
    }
    
    /// Same as reduce but in reverse order
    func reduceRight<Result>(_ initialResult: Result, _ nextPartialResult: (Result, Element) throws -> Result) rethrows -> Result {
        return try self.reversed().reduce(initialResult, nextPartialResult)
    }
    
    /// Same as reduceRight with index parameter
    func reduceRightIndexed<Result>(_ initialResult: Result, _ nextPartialResult: (Result, Element, Int) throws -> Result) rethrows -> Result {
        return try self.reversed().reduceIndexed(initialResult, nextPartialResult)
    }
    
    /// Returns a list containing all elements not matching the given `predicate`.
    __consuming func filterNot(_ predicate: (Element) throws -> Bool) rethrows -> [Element] {
        return try self.filter { try predicate($0).not }
    }
    
    /// Returns an element at the given `index` or `nil` if the `index` is out of bounds of this array.
    func getOrNull(_ index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
    
    /// Returns an element at the given `index` or the result of calling the `defaultValue` function if the `index` is out of bounds of this array.
    func getOrElse(_ index: Index, _ defaultValue: (Index) throws -> Element) rethrows -> Element {
        return try self.getOrNull(index) ?? defaultValue(index)
    }
}
