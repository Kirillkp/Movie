//
//  UIColor+Extensions.swift
//  Movie
//
//  Created by Кирилл Полосов on 16.09.2022.
//

import Foundation
import UIKit

// MARK: - Initializers
public extension UIColor {

    convenience init(hex: Int, alpha: CGFloat) {
        let red = CGFloat((hex & 0xFF0000) >> 16) / 255
        let green = CGFloat((hex & 0xFF00) >> 8) / 255
        let blue = CGFloat(hex & 0xFF) / 255
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }

    convenience init(hex: Int) {
        self.init(hex: hex, alpha: 1.0)
    }
}
