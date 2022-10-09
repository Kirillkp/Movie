//
//  UICollectionView+Extensions.swift
//  Movie
//
//  Created by Кирилл Полосов on 08.10.2022.
//

import UIKit

extension UICollectionView {
    
    func scrollToVisibleCollectionViewCell(with index: @escaping (Int) -> Void) {
        decelerationRate = UIScrollView.DecelerationRate.normal
        let visibleCenterPositionOfScrollView = Float(contentOffset.x + (bounds.size.width / 2))
        var closestCellIndex = -1
        var closestDistance: Float = .greatestFiniteMagnitude
        for i in 0..<visibleCells.count {
            let cell = visibleCells[i]
            let cellWidth = cell.bounds.size.width
            let cellCenter = Float(cell.frame.origin.x + cellWidth / 2)

            let distance: Float = fabsf(visibleCenterPositionOfScrollView - cellCenter)
            if distance < closestDistance {
                closestDistance = distance
                closestCellIndex = indexPath(for: cell)!.row
            }
        }
        if closestCellIndex != -1 {
            scrollToItem(at: IndexPath(row: closestCellIndex, section: 0), at: .centeredHorizontally, animated: true)
            index(closestCellIndex)
        }
    }
}
