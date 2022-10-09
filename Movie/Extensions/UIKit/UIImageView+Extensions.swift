//
//  UIImageView+Extensions.swift
//  Movie
//
//  Created by Кирилл Полосов on 09.10.2022.
//

import UIKit

extension UIImageView {
    
    func applyBlurEffect() {
        let blurEffect = UIBlurEffect(style: .systemUltraThinMaterialDark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(blurEffectView)
    }
}
