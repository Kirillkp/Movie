//
//  ModuleFactory+MainModule.swift
//  Movie
//
//  Created by Кирилл Полосов on 19.09.2022.
//

import Foundation

extension ModuleFactory {

    func createMainModule() -> MainModule {
        let viewModel = MainViewModel()
        let controller = MainViewController(viewModel: viewModel)
        viewModel.view = controller
        return controller
    }
}
