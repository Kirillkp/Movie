//
//  Window+Extensions.swift
//  Movie
//
//  Created by Кирилл Полосов on 19.09.2022.
//

import UIKit

extension UIWindow {
    func transit(to viewController: UIViewController, animated: Bool = true) {
        rootViewController = viewController

        guard animated else {
            return
        }
        
        UIView.transition(with: AppDelegate.shared.appWindow,
                          duration: 0.3,
                          options: .transitionCrossDissolve,
                          animations: nil)
    }
}
