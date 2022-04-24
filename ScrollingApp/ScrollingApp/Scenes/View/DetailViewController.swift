//
//  DetailViewController.swift
//  ScrollingApp
//
//  Created by Atul Vishnoi on 24/04/22.
//

import UIKit

final class DetailViewController: UIViewController {

    private let viewModel: DetailViewModel
    @IBOutlet private weak var collectionView: UICollectionView!

    init(viewModel: DetailViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - Initialiser
extension DetailViewController {
    static func create(viewModel: DetailViewModel) -> DetailViewController {
        DetailViewController(viewModel: viewModel)
    }
}
