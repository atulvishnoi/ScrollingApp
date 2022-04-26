//
//  CollectionReusableView.swift
//  ScrollingApp
//
//  Created by Atul Vishnoi on 26/04/22.
//

import UIKit

final class SectionHeader: UICollectionReusableView {

    // MARK: - Properties
    @IBOutlet private weak var titleLabel: UILabel!

    // MARK: - Initialization
    override func awakeFromNib() {
        super.awakeFromNib()

        // Configure Title Label
        titleLabel.textColor = .white
    }

    func configure(section: String) {
        titleLabel.text = section
    }
}
