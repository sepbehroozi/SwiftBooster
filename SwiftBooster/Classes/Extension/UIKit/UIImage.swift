//
//  UIImage.swift
//  SwiftBooster
//
//  Created by Sepehr Behroozi on 4/17/19.
//  Copyright © 2019 ayantech.ir. All rights reserved.
//

import UIKit

public extension UIImage {
    /// Initialize an UIImage with given Base64 string `b64Text`.
    convenience init?(base64String b64Text: String?) {
        guard let b64Text = b64Text, let data = Data.init(base64Encoded: b64Text, options: .ignoreUnknownCharacters) else {
            return nil
        }
        self.init(data: data)
    }
    
    /// Converts current UIImage to Base64 string.
    func toBase64String(maxSize: Int64 = 512 * 1000) -> String? {
        let currentSize = (self.jpegData(compressionQuality: 1.0)?.count ?? 1)
        let compressionQuality = CGFloat(maxSize) / CGFloat(currentSize)
        if let imageData = self.jpegData(compressionQuality: compressionQuality) {
            return imageData.base64EncodedString()
        }
        return nil
    }
}
