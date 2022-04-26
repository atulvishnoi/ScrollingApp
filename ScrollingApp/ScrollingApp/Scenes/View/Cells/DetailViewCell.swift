//
//  DetailViewCell.swift
//  ScrollingApp
//
//  Created by Atul Vishnoi on 24/04/22.
//

import UIKit

final class DetailViewCell: UICollectionViewCell {

    @IBOutlet private weak var imageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configure(imageName: String) {
        imageView.image = UIImage(named: imageName)
    }
}
