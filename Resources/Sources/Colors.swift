//
//  Colors.swift
//  Movie
//
//  Created by Кирилл Полосов on 16.09.2022.
//

import UIKit

public extension UIColor {
    
    private static func resourceColor(named: String, fallback: UIColor = .white) -> UIColor {
        UIColor(named: named) ?? fallback
    }
    
    /// #3544C4
    static func selectedTabBarItem(compatibleWith: UITraitCollection? = nil) -> UIColor {
        .resourceColor(named: "3544C4").withAlphaComponent(1)
    }
    
    /// #D6D6D6
    static func normalTabBarItem(compatibleWith: UITraitCollection? = nil) -> UIColor {
        .resourceColor(named: "D6D6D6").withAlphaComponent(1)
    }
}
