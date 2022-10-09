//
//  BaseViewController.swift
//  Movie
//
//  Created by Кирилл Полосов on 02.10.2022.
//

import Foundation
import UIKit

class BaseViewController<ViewModel>: UIViewController, InitializableViewProtocol {
    
    let viewModel: ViewModel
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel

        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override open func viewDidLoad() {
        super.viewDidLoad()

        onViewDidLoad()
    }

    open func onViewDidLoad() {
        initializeView()
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
