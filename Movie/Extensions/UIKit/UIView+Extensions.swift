//
//  UIView+Extensions.swift
//  Movie
//
//  Created by Кирилл Полосов on 02.10.2022.
//

import Foundation
import UIKit

public extension UIView {
    func addSubviews(_ views: [UIView]) {
        views.forEach { addSubview($0) }
    }
    
    func addSubviews(_ views: UIView...) {
        views.forEach { addSubview($0) }
    }
}
