//
//  ModuleFactory+MainModule.swift
//  Movie
//
//  Created by Кирилл Полосов on 19.09.2022.
//

import Foundation

extension ModuleFactory {

    func createMainModule() -> MainModule {
        let controller = MainViewController()
        let viewModel = MainViewModel()
        viewModel.view = controller
        return controller
    }
}
