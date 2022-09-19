//
//  FavoriteViewController.swift
//  Movie
//
//  Created by Кирилл Полосов on 19.09.2022.
//

import UIKit
import CoordinatorLib

protocol FavoriteModule: Presentable {
    
}

protocol FavoriteModuleInput {
    
}

final class FavoriteViewController: UIViewController, FavoriteModule {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Favorite"
        view.backgroundColor = .white
    }

}

extension FavoriteViewController: FavoriteModuleInput {
    
}
