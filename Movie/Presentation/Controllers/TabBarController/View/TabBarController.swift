//
//  TabBarController.swift
//  Movie
//
//  Created by Кирилл Полосов on 16.09.2022.
//

import Foundation
import UIKit

final class TabBarController: UITabBarController {
    
    func configureThemeAppearance() {
        if let viewControllers = viewControllers {
            zip(viewControllers, TabBarItem.allCases).forEach { controller, item in
                controller.tabBarItem = item.asTabBarItem()
            }
        }
        
        setTabBarAppearance()
    }
    
    private func setTabBarAppearance() {
        let positionOnX: CGFloat = 20
        let positionOnY: CGFloat = 14
        let width = tabBar.bounds.width - positionOnX * 2
        let height = tabBar.bounds.height + positionOnY * 2
        
        let roundLayer = CAShapeLayer()
        
        let bezierPath = UIBezierPath(
            roundedRect: CGRect(
                x: positionOnX,
                y: tabBar.bounds.minY - positionOnY,
                width: width,
                height: height
            ),
            cornerRadius: height / 2
        )
        
        roundLayer.path = bezierPath.cgPath
        
        tabBar.layer.insertSublayer(roundLayer, at: .zero)
    
        tabBar.itemPositioning = .fill
        
        roundLayer.fillColor = UIColor.backgroundTabBar.cgColor
        
        tabBar.tintColor = .selectedTabBarItem
        tabBar.unselectedItemTintColor = .normalTabBarItem
        
        tabBar.layer.masksToBounds = false
        tabBar.layer.shadowColor = UIColor.black.cgColor
        tabBar.layer.shadowOffset = CGSize(width: 0, height: 10)
        tabBar.layer.shadowOpacity = 0.1
        tabBar.layer.shadowRadius = 15.0
    }
}
