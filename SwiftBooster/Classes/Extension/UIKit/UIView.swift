//
//  UIView.swift
//  SwiftBooster
//
//  Created by Sepehr Behroozi on 4/17/19.
//  Copyright © 2019 ayantech.ir. All rights reserved.
//

import UIKit

public extension UIView {
    /// Returns current `View`s class name.
    class var nibName: String {
        return String.init(describing: self)
    }
    
    /// Returns current `View`s nib with `nil` bundle.
    class var nib: UINib {
        return UINib.init(nibName: nibName, bundle: nil)
    }
    
    /// Adds shadow to the current `layer` with given shadow radius `withRadius` and specified shadow offset `offset`.
    func dropShadow(withRadius: CGFloat = 3, offset: CGSize = CGSize(width: 1, height: 1)) {
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.3
        self.layer.shadowRadius = withRadius
        self.layer.shadowOffset = offset
    }
    
    /// Use to access the current layers `cornerRadius`.
    @IBInspectable var radius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        
        get {
            return layer.cornerRadius
        }
    }
    
    /// Use to access the current layers `borderWidth`.
    @IBInspectable var borderWidth: CGFloat {
        set {
            
            layer.borderWidth = newValue
        }
        
        get {
            return layer.borderWidth
        }
    }
    
    /// Use to access the current layers `borderColor`.
    @IBInspectable var borderColor: UIColor {
        set {
            
            layer.borderColor = newValue.cgColor
        }
        
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
    }
    
    /// Sets the current `transform` to a `CGAffineTransform` with given `scale`
    func transform(scale: CGFloat) {
        self.transform = CGAffineTransform(scaleX: scale, y: scale)
    }
    
    /// Shake current view by adding the `CGAffineTransform` with animation
    func shake() {
        self.transform = CGAffineTransform(translationX: 20, y: 0)
        UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 1, options: .curveEaseInOut, animations: {
            self.transform = CGAffineTransform.identity
        }, completion: nil)
    }
}

