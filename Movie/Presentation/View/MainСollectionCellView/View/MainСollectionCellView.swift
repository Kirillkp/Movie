//
//  TableCellView.swift
//  Movie
//
//  Created by Кирилл Полосов on 02.10.2022.
//

import Foundation
import UIKit
import SnapKit
import SDWebImage

final class MainСollectionCellView: BaseCollectionCell {
    
    private let posterView = UIImageView()
    private let ratingImageView = UIImageView()
    private let ratingLabel = UILabel()
    private let favoriteImageView = UIImageView()
    private let backgroundRating = UIView()
    
    override func addViews() {
        super.addViews()
        
        backgroundRating.addSubviews(ratingImageView,
                                     ratingLabel)
        
        posterView.addSubviews(favoriteImageView,
                               backgroundRating)
        
        contentView.addSubviews(posterView)
    }
    
    override func configureLayout() {
        super.configureLayout()
        
        posterView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        backgroundRating.snp.makeConstraints {
            $0.leading.top.equalToSuperview().inset(CGFloat.shortInset)
        }
        
        ratingImageView.snp.makeConstraints {
            $0.top.leading.bottom.equalToSuperview().inset(CGFloat.smallInset)
        }
        
        ratingLabel.snp.makeConstraints {
            $0.leading.equalTo(ratingImageView.snp.trailing).offset(CGFloat.littleInset)
            $0.centerY.equalTo(ratingImageView).offset(1)
            $0.trailing.equalToSuperview().inset(CGFloat.smallInset)
        }
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        posterView.backgroundColor = .red
        posterView.layer.cornerRadius = .bigCornerRadius
        posterView.contentMode = .scaleAspectFill
        posterView.clipsToBounds = true
        
        ratingImageView.image = .collectionCellRatingStarItem()
        ratingImageView.contentMode = .scaleAspectFill
        
        ratingLabel.textColor = .white
        
        backgroundRating.backgroundColor = .white.withAlphaComponent(0.6)
        backgroundRating.layer.cornerRadius = CGFloat.bigCornerRadius
    }
    
    func configure(with viewModel: MainСollectionCellViewModel) {
        posterView.sd_setImage(with: URL(string: viewModel.posterUrl))
        ratingLabel.text = String(viewModel.rating)
        favoriteImageView.image = viewModel.favorite ? .add : .checkmark
    }
}
