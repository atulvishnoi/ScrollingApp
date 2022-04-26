//
//  ViewController.swift
//  ScrollingApp
//
//  Created by Atul Vishnoi on 23/04/22.
//

import UIKit

final class ViewController: UIViewController {

    // MARK: - IBActions
    @IBAction private func showScrollButtonTapped() {
        // This logic should be in proper routing module of the project. not in the viewController. ViewController will inform viewModel and viewmodel should inform to router and take appropriate action.
        let viewModel = DefaultDetailViewModel(dataSource: prepareDummyData())
        let detailViewController = DetailViewController.create(viewModel: viewModel)
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: - Prepare  Dummy data for cells
    private func prepareDummyData() -> [SectionType] {
        // We are creating dummy data here, the original data should be comming from designated API and DataModels
        let dataSource: [SectionType] = [
            SectionType.fullDetail([
                CellType.small("dummy"),
                CellType.small("dummy"),
                CellType.large("dummy"),
            ]),
            SectionType.semiDetail([CellType.large("dummy")]),
            SectionType.fullDetail([
                CellType.small("dummy"),
                CellType.small("dummy"),
                CellType.large("dummy"),
            ]),
            SectionType.semiDetail([CellType.large("dummy")]),
            SectionType.fullDetail([
                CellType.small("dummy"),
                CellType.small("dummy"),
                CellType.large("dummy"),
            ]),
            SectionType.semiDetail([CellType.large("dummy")]),
            SectionType.fullDetail([
                CellType.small("dummy"),
                CellType.small("dummy"),
                CellType.large("dummy")
            ]),
            SectionType.semiDetail([CellType.large("dummy")]),
            SectionType.fullDetail([
                CellType.small("dummy"),
                CellType.small("dummy"),
                CellType.large("dummy")
            ]),
            SectionType.semiDetail([CellType.large("dummy")])
        ]
        return dataSource
    }
}

