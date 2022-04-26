//
//  UICollectionView+extensions.swift
//  ScrollingApp
//
//  Created by Atul Vishnoi on 25/04/22.
//

import UIKit

enum CollectionViewSupplementaryViewKind: String {
    case header = "UICollectionElementKindSectionHeader"
    case footer = "UICollectionElementKindSectionFooter"
}


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

    func dequeueHeader<T: UICollectionReusableView>(for indexPath: IndexPath) -> T {
        guard let cell = self.dequeueReusableSupplementaryView(
            ofKind: CollectionViewSupplementaryViewKind.header.rawValue,
            withReuseIdentifier: T.className,
            for: indexPath
        ) as? T else {
            fatalError("DequeueReusableCell failed while casting")
        }
        return cell
    }

    func register<T: UICollectionReusableView>(reusableView: T.Type, for kind: CollectionViewSupplementaryViewKind) {
        register(
            reusableView.nib,
            forSupplementaryViewOfKind: kind.rawValue,
            withReuseIdentifier: reusableView.className
        )
    }
}

