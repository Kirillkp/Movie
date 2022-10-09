//
//  TableListView.swift
//  Movie
//
//  Created by Кирилл Полосов on 02.10.2022.
//

import Foundation
import UIKit

final class MainCollectionView: BaseCollectionView {
    
    private let flowLayout = UICollectionViewFlowLayout()
    private let sizeForItem: CGSize
    private var filmData: [Film]? = nil
    
    init(sizeForItem: CGSize) {
        self.sizeForItem = sizeForItem
        
        super.init(frame: .zero, collectionViewLayout: flowLayout)
    }
        
    override func configureAppearance() {
        super.configureAppearance()
        
        register(MainСollectionCellView.self, forCellWithReuseIdentifier: "MainCell")
        delegate = self
        dataSource = self
        flowLayout.scrollDirection = .horizontal
        collectionViewLayout = flowLayout
        showsHorizontalScrollIndicator = false
        
    }
    
    func configure(with data: [Film]) {
        filmData = data
    }
}

extension MainCollectionView: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainCell", for: indexPath) as? MainСollectionCellView else {
            return UICollectionViewCell()
        }
        
        let model = filmData?[indexPath.row]
        cell.configure(with: MainСollectionCellViewModel(posterUrl: model?.posterUrlPreview ?? "",
                                                         rating: model?.ratingKinopoisk ?? 0,
                                                         favorite: true))
        
        return cell
    }
}

extension MainCollectionView: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return sizeForItem
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: .zero, left: .defaultInset, bottom: .zero, right: .defaultInset)
    }
}

extension MainCollectionView: UIScrollViewDelegate {
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        scrollToVisibleCollectionViewCell()
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        if !decelerate {
            scrollToVisibleCollectionViewCell()
        }
    }
}
