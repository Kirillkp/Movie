//
//  CoordinatorFactory+FavoriteCoordinator.swift
//  Movie
//
//  Created by Кирилл Полосов on 19.09.2022.
//

import UIKit
import CoordinatorLib

extension CoordinatorFactory {
    
    func makeFavoriteCoordinator() -> CoordinatorGroup<FavoriteCoordinator> {
        let navigation = UINavigationController()
        let router = Router(rootController: navigation)
        let coordinator = FavoriteCoordinator(router: router,
                                              moduleFactory: moduleFactory,
                                              coordinatorFactory: self)
        
        return (coordinator, navigation)
    }
}
