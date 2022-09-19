//
//  MainCoordinator.swift
//  Movie
//
//  Created by Кирилл Полосов on 18.09.2022.
//

import Foundation
import CoordinatorLib

final class MainCoordinator: BaseCoordinator {
    
    private let moduleFactory: ModuleFactory
    private let router: Routable
    private let coordinatorFactory: CoordinatorFactory
    
    private let mainModule: MainModule
    
    init(router: Routable,
         moduleFactory: ModuleFactory,
         coordinatorFactory: CoordinatorFactory) {
        
        self.router = router
        self.moduleFactory = moduleFactory
        self.coordinatorFactory = coordinatorFactory
        
        mainModule = moduleFactory.createMainModule()
    }
    
    override func start() {
        showMainModule()
    }
    
    private func showMainModule() {
        router.push(mainModule)
    }
}
