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
        //CollectionViewController.create(viewModel: <#T##CollectionViewModel#>)

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

