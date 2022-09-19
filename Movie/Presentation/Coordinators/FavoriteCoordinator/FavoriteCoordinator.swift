//
//  FavoriteCoordinator.swift
//  Movie
//
//  Created by Кирилл Полосов on 19.09.2022.
//

import Foundation
import CoordinatorLib

final class FavoriteCoordinator: BaseCoordinator {
    
    private let moduleFactory: ModuleFactory
    private let router: Routable
    private let coordinatorFactory: CoordinatorFactory
    
    private let favoriteModule: FavoriteModule
    
    init(router: Routable,
         moduleFactory: ModuleFactory,
         coordinatorFactory: CoordinatorFactory) {
        
        self.router = router
        self.moduleFactory = moduleFactory
        self.coordinatorFactory = coordinatorFactory
        
        favoriteModule = moduleFactory.createFavoriteModule()
    }
    
    override func start() {
        showFavoriteModule()
    }
    
    private func showFavoriteModule() {
        router.push(favoriteModule)
    }
}
