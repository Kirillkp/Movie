//
//  BaseInitializableCell.swift
//  Movie
//
//  Created by Кирилл Полосов on 02.10.2022.
//

import UIKit

class BaseTableCell: UITableViewCell, InitializableViewProtocol {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)

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
        selectionStyle = .none
        backgroundColor = .clear
    }

    func localize() {
        // empty for subclasses overriding
    }
}
