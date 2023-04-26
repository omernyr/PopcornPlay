//
//  UIViewExtensions.swift
//  PopcornPlay
//
//  Created by macbook pro on 26.04.2023.
//

import Foundation
import UIKit

extension UIView {
    
    func round( _ radius: CGFloat = 10.0) {
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
    
    func addBorder(color: UIColor, width: CGFloat) {
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = width
    }
}
