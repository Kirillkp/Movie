//
//  BaseTableView.swift
//  Movie
//
//  Created by Кирилл Полосов on 02.10.2022.
//

import Foundation
import UIKit

class BaseCollectionView: UICollectionView, InitializableViewProtocol {
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        
        initializeView()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - InitializableView
    
    func addViews() {
        // empty for subclasses overriding
    }
    
    func configureLayout() {
        // empty for subclasses overriding
    }
    
    func bindViews() {
        // empty for subclasses overriding
    }
    
    func configureAppearance() {
        // empty for subclasses overriding
    }
    
    func localize() {
        // empty for subclasses overriding
    }
}
