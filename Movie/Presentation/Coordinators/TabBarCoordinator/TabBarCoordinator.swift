//
//  TabBarCoordinator.swift
//  Movie
//
//  Created by Кирилл Полосов on 18.09.2022.
//

import Foundation
import CoordinatorLib

final class TabBarCoordinator: BaseCoordinator {
    
    private let router: Routable
    private let coordinatorFactory: CoordinatorFactory
    private weak var tabBarController: TabBarController?
    
    private weak var mainCoordinator: MainCoordinator?
    private weak var categoriesCoordinator: CategoriesCoordinator?
    private weak var favoritesCoordinator: FavoriteCoordinator?
    
    init(router: Routable,
         coordinatorFactory: CoordinatorFactory = .init(),
         tabBarController: TabBarController) {
        
        self.router = router
        self.coordinatorFactory = coordinatorFactory
        self.tabBarController = tabBarController
    }
    
    override func start() {
        bindToTabBarModule()
    }
    
    private func bindToTabBarModule() {
        let modernControllers = TabBarItem.allCases
            .compactMap { makeTabBarItemCoordinator(for: $0).toPresent }

        tabBarController?.setViewControllers(modernControllers, animated: false)
        
        tabBarController?.configureThemeAppearance()
    }
    
    private func makeTabBarItemCoordinator(for item: TabBarItem) -> Presentable {
        let coordinator: Coordinatable
        let presentable: Presentable
        
        switch item {
        case .main:
            let (mainCoordinator, mainPresentable) = coordinatorFactory.makeMainCoordinator()
            
            (coordinator, presentable) = (mainCoordinator, mainPresentable)
            
            self.mainCoordinator = mainCoordinator
        case .categories:
            let (categoriesCoordinator, categoriesPresentable) = coordinatorFactory.makeCategoriesCoordinator()
            
            (coordinator, presentable) = (categoriesCoordinator, categoriesPresentable)
            
            self.categoriesCoordinator = categoriesCoordinator
        case .favorites:
            let (favoritesCoordinator, favoritesPresentable) = coordinatorFactory.makeFavoriteCoordinator()
            
            (coordinator, presentable) = (favoritesCoordinator, favoritesPresentable)
            
            self.favoritesCoordinator = favoritesCoordinator
        }
        
        add(child: coordinator)
        
        coordinator.start()
        
        return presentable
    }
}

private extension TabBarCoordinator {
    
}
