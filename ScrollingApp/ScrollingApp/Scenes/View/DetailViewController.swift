//
//  DetailViewController.swift
//  ScrollingApp
//
//  Created by Atul Vishnoi on 24/04/22.
//

import UIKit

final class DetailViewController: UIViewController {
    // MARK: - properties
    private let viewModel: DetailViewModel
    private let smallItemHeight: CGFloat = 150.0
    private let largeItemHeight: CGFloat = 200.0
    private let itemMargein: CGFloat = 20.0
    private let sectionHeaderHeight: CGFloat = 50.0

    // MARK: - IBOutlets
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
        configureCollectionView()
    }
}

// MARK: - Utility function
fileprivate extension DetailViewController {
    func getCellType(for indexPath: IndexPath) -> CellType {
        let section = viewModel.dataSource[indexPath.section]
        var cellType: CellType
        switch section {
        case .fullDetail(let cells):
            cellType =  cells[indexPath.row]
        case .semiDetail(let cells):
            cellType =  cells[indexPath.row]
        }
        return cellType
    }

    func configureCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        collectionView.setCollectionViewLayout(layout, animated: true)
        collectionView.delegate = self
        collectionView.register(cell: DetailViewCell.self)
    }
}

// MARK: - CollectionView DataSource
extension DetailViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        viewModel.dataSource.count
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let section = viewModel.dataSource[section]
        switch section {
        case .fullDetail(let cells):
            return cells.count
        case .semiDetail(let cells):
            return cells.count
        }
    }

    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        let cell: DetailViewCell = collectionView.dequeueCell(for: indexPath)
        var imageName: String
        switch getCellType(for: indexPath) {
        case .large(let name):
            imageName = name
        case .small(let name):
            imageName = name
        }
        cell.configure(imageName: imageName)
        return cell
    }

    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {
        switch getCellType(for: indexPath) {
        case .large(_):
            return CGSize(width: UIScreen.main.bounds.size.width - itemMargein, height: largeItemHeight)
        case .small(_):
            return CGSize(width: UIScreen.main.bounds.size.width/2 - itemMargein, height: smallItemHeight)
        }
    }

    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        referenceSizeForHeaderInSection section: Int
    ) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.size.width, height: sectionHeaderHeight)
    }
}

// MARK: - Initialiser
extension DetailViewController {
    static func create(viewModel: DetailViewModel) -> DetailViewController {
        DetailViewController(viewModel: viewModel)
    }
}
