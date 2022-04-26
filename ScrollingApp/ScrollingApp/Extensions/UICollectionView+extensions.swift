//
//  UICollectionView+extensions.swift
//  ScrollingApp
//
//  Created by Atul Vishnoi on 25/04/22.
//

import UIKit

extension UICollectionView {

    func dequeueCell<T: UICollectionViewCell>(for indexPath: IndexPath) -> T {
        guard let cell = self.dequeueReusableCell(withReuseIdentifier: T.className, for: indexPath) as? T else {
            fatalError("DequeueReusableCell failed while casting")
        }
        return cell
    }

    func register<T: UICollectionViewCell>(cell: T.Type) {
        register(cell.nib, forCellWithReuseIdentifier: cell.className)
    }
}

