//
//  CoordinatorFactory+CategoriesCoordinator.swift
//  Movie
//
//  Created by Кирилл Полосов on 19.09.2022.
//

import UIKit
import CoordinatorLib

extension CoordinatorFactory {
    
    func makeCategoriesCoordinator() -> CoordinatorGroup<CategoriesCoordinator> {
        let navigation = UINavigationController()
        let router = Router(rootController: navigation)
        let coordinator = CategoriesCoordinator(router: router,
                                                moduleFactory: moduleFactory,
                                                coordinatorFactory: self)
        
        return (coordinator, navigation)
    }
}
