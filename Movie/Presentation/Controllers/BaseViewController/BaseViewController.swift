//
//  BaseViewController.swift
//  Movie
//
//  Created by Кирилл Полосов on 02.10.2022.
//

import Foundation
import UIKit

class BaseViewController: UIViewController, InitializableViewProtocol {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
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
