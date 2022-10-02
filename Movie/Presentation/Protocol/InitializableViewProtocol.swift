//
//  InitializableViewProtocol.swift
//  Movie
//
//  Created by Кирилл Полосов on 02.10.2022.
//

import Foundation

/// Protocol with methods that should be called in constructor methods of view.
protocol InitializableViewProtocol {

    /// Main method that should call other methods in particular order.
    func initializeView()

    /// Method for adding views to current view.
    func addViews()
    
    /// Confgiure layout of subviews.
    func configureLayout()

    /// Method for binding to data or user actions.
    func bindViews()

    /// Appearance configuration method.
    func configureAppearance()

    /// Localization method.
    func localize()
}

extension InitializableViewProtocol {

    func initializeView() {
        addViews()
        configureLayout()
        bindViews()
        configureAppearance()
        localize()
    }
}
