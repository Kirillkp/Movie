//
//  ApplicationController.swift
//  Movie
//
//  Created by Кирилл Полосов on 15.09.2022.
//

import Foundation
import CoordinatorLib

enum ApplicationController {
    
    private(set) static var tabBarCoordinator: TabBarCoordinator?
    
    /// Стартовая настройка приложения
    static func initialSetup() {
        loadMainViewController()
    }
    
    private static func loadMainViewController() {
        let tabBarViewController = ModuleFactory.createTabBarModule()
        tabBarCoordinator = TabBarCoordinator(router: Router(rootController: UINavigationController()),
                                              tabBarController: tabBarViewController)

        tabBarCoordinator?.start()

        setRootViewController(tabBarViewController, animated: true)
    }
    
    private static func setRootViewController(_ viewController: UIViewController, animated: Bool) {
        let appWindow = AppDelegate.shared.appWindow

        if appWindow.rootViewController != nil {
            return
        }

        appWindow.transit(to: viewController, animated: animated)
    }
}
