//
//  CollectionViewModel.swift
//  ScrollingApp
//
//  Created by Atul Vishnoi on 24/04/22.
//

import Foundation

protocol DetailVMInputs {
    var dataSource: [SectionType] { get set }
}

protocol DetailVMOutputs {

}

protocol DetailViewModel: DetailVMInputs, DetailVMOutputs {

}

final class DefaultDetailViewModel: DetailViewModel {
    var dataSource: [SectionType] = .init()

    init(dataSource: [SectionType]) {
        self.dataSource = dataSource
    }
    
}

enum SectionType {
    case fullDetail([CellType])
    case semiDetail([CellType])
}

enum CellType {
    case large(String)
    case small(String)
}
