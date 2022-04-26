//
//  UIView+Extensions.swift
//  ScrollingApp
//
//  Created by Atul Vishnoi on 25/04/22.
//

import UIKit

extension UIView {
    static var nib: UINib {
        return UINib(nibName: self.className, bundle: nil)
    }
}
