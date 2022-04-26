//
//  UIColor+Extensions.swift
//  ScrollingApp
//
//  Created by Atul Vishnoi on 26/04/22.
//

import UIKit

extension UIColor {
    static func random() -> UIColor {
        let r:CGFloat = CGFloat(arc4random_uniform(255)) / 255.0
        let g:CGFloat = CGFloat(arc4random_uniform(255)) / 255.0
        let b:CGFloat = CGFloat(arc4random_uniform(255)) / 255.0
        return UIColor(red: r, green: g, blue: b, alpha: 1.0)
    }
}
