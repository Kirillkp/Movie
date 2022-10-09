//
//  Images.swift
//  Movie
//
//  Created by Кирилл Полосов on 16.09.2022.
//

import UIKit.UIImage

public extension UIImage {
    
    private static func resourceImage(named: String,
                                      compatibleWith: UITraitCollection? = nil) -> UIImage {
        guard let image = UIImage(named: named,
                                  in: .frameworkBundle,
                                  compatibleWith: compatibleWith) else {
            assertionFailure("Unable to find image named \(named) in \(Bundle.frameworkBundle)")
            return UIImage()
        }

        return image
    }
    
    private static func systemIcon(named: String) -> UIImage {
        guard let image = UIImage(systemName: named) else {
            assertionFailure("Unable to find image named \(named) in \(Bundle.frameworkBundle)")
            return UIImage()
        }

        return image
    }
    
    // MARK: - TabBar
    
    static func mainTabBarIcon(compatibleWith: UITraitCollection? = nil) -> UIImage {
        resourceImage(named: "main_tab_bar_item", compatibleWith: compatibleWith)
    }
    
    static func favoritesTabBarIcon(compatibleWith: UITraitCollection? = nil) -> UIImage {
        resourceImage(named: "favorites_tab_bar_item", compatibleWith: compatibleWith)
    }
    
    static func categoriesTabBarIcon(compatibleWith: UITraitCollection? = nil) -> UIImage {
        resourceImage(named: "categories_tab_bar_item", compatibleWith: compatibleWith)
    }
    
    // MARK: - MainCollectionCell
    
    static func collectionCellRatingStarItem(compatibleWith: UITraitCollection? = nil) -> UIImage {
        resourceImage(named: "collection_cell_rating_star_item", compatibleWith: compatibleWith)
    }
}
