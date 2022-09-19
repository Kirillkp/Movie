//
//  ModuleFactory+FavoriteModule.swift
//  Movie
//
//  Created by Кирилл Полосов on 19.09.2022.
//

import Foundation

extension ModuleFactory {

    func createFavoriteModule() -> FavoriteModule {
        let controller = FavoriteViewController()
        let viewModel = FavoriteViewModel()
        viewModel.view = controller
        return controller
    }
}
