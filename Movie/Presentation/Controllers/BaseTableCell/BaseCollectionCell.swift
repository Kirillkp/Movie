//
//  BaseInitializableCell.swift
//  Movie
//
//  Created by Кирилл Полосов on 02.10.2022.
//

import UIKit

class BaseCollectionCell: UICollectionViewCell, InitializableViewProtocol {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initializeView()
    }

    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    // MARK: - InitializableView

    func addViews() {
        // empty for subclasses overriding
    }

    func bindViews() {
        // empty for subclasses overriding
    }

    func configureLayout() {
        // empty for subclasses overriding
    }

    func configureAppearance() {
        // empty for subclasses overriding
    }

    func localize() {
        // empty for subclasses overriding
    }
}
