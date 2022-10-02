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
    static var selectedTabBarItem: UIColor { .init(hex: 0x3544C4) }
    
    /// #D6D6D6
    static var normalTabBarItem: UIColor { .init(hex: 0xD6D6D6) }
    
    /// #F5F6F7
    static var backgroundTabBar: UIColor { .init(hex: 0xF5F6F7) }
}
