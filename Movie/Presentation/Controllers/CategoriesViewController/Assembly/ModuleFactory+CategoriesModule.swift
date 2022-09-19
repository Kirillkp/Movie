//
//  ModuleFactory+CategoriesModule.swift
//  Movie
//
//  Created by Кирилл Полосов on 19.09.2022.
//

import Foundation

extension ModuleFactory {

    func createCategoriesModule() -> CategoriesModule {
        let controller = CategoriesViewController()
        let viewModel = CategoriesViewModel()
        viewModel.view = controller
        return controller
    }
}
