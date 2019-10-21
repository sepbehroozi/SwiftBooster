//
//  General.swift
//  SwiftBooster
//
//  Created by Sepehr Behroozi on 4/17/19.
//  Copyright © 2019 ayantech.ir. All rights reserved.
//

import Foundation
import UIKit

/// Returns a `CGFloat` value representing one pixel of the main screen
public let onePx = 1 / UIScreen.main.scale

/// Executes the given function `action` specified number of `times`. A zero-based index of current iteration is passed as a parameter to `action`.
public func doRepeat(times: Int, _ action: (Int) throws -> Void) rethrows {
    for i in 0..<times {
        try action(i)
    }
}

/// Random number in range [start, end)
public func randomNumber<T : SignedInteger>(inRange range: ClosedRange<T> = 1...6) -> T {
    let length = Int64(range.upperBound - range.lowerBound)
    let value = Int64(arc4random()) % length + Int64(range.lowerBound)
    return T(value)
}

/// Calls the specified function `block` with the given `receiver` as its receiver and returns its result.
@discardableResult public func with<T, R>(_ receiver: T, _ block: (T) -> R) -> R {
    return block(receiver)
}

/// Run the sepicified function `block` in main queue
public func runOnMainThread(_ block: @escaping () -> Void) {
    DispatchQueue.main.async(execute: block)
}

/// Run the sepicified function `block` in the given queue `queue` with specified delay `delaySeconds`. Default queue in `main`.
public func doAfter(_ delaySeconds: Double, on queue: DispatchQueue = DispatchQueue.main, _ block: @escaping () -> Void) {
    queue.asyncAfter(deadline: DispatchTime.now() + Double(Int64(delaySeconds * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC), execute: block)
}

