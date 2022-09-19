//
//  CategoriesCoordinator.swift
//  Movie
//
//  Created by Кирилл Полосов on 19.09.2022.
//

import Foundation
import CoordinatorLib

final class CategoriesCoordinator: BaseCoordinator {
    
    private let moduleFactory: ModuleFactory
    private let router: Routable
    private let coordinatorFactory: CoordinatorFactory
    
    private let categoriesModule: CategoriesModule
    
    init(router: Routable,
         moduleFactory: ModuleFactory,
         coordinatorFactory: CoordinatorFactory) {
        
        self.router = router
        self.moduleFactory = moduleFactory
        self.coordinatorFactory = coordinatorFactory
        
        categoriesModule = moduleFactory.createCategoriesModule()
    }
    
    override func start() {
        showCategoriesModule()
    }
    
    private func showCategoriesModule() {
        router.push(categoriesModule)
    }
}
